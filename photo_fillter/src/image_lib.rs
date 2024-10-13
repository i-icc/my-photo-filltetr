use image::{GenericImageView, ImageBuffer, Rgba, RgbaImage};

pub fn bytes_to_rgba_image(bytes: &[u8], width: u32, height: u32) -> RgbaImage {
    ImageBuffer::from_raw(width, height, bytes.to_vec())
        .expect("Failed to create RgbaImage from raw bytes")
}

pub fn grayscale_fillter(img_data: &[u8], width: u32, height: u32) -> Vec<u8> {
    let img = RgbaImage::from_raw(width, height, img_data.to_vec()).unwrap();

    // RGBAフォーマットに準じたベクタを準備
    let mut rgba_data: Vec<u8> = vec![0; (width * height * 4) as usize];

    for (i, pixel) in img.pixels().enumerate() {
        // グレースケール値を計算
        let gray_value =
            (0.299 * pixel[0] as f32 + 0.587 * pixel[1] as f32 + 0.114 * pixel[2] as f32) as u8;

        // RGBAデータのフォーマットに合わせる（R=G=B=gray_value, A=255）
        rgba_data[i * 4] = gray_value; // R
        rgba_data[i * 4 + 1] = gray_value; // G
        rgba_data[i * 4 + 2] = gray_value; // B
        rgba_data[i * 4 + 3] = 255; // A
    }

    rgba_data
}

pub fn split_image(img_data: &[u8], width: u32, height: u32) -> [RgbaImage; 4] {
    // 画像全体のRGBAピクセルのバッファを読み込み
    let img =
        ImageBuffer::from_raw(width, height, img_data.to_vec()).expect("Failed to create image");

    // 各部分の幅と高さを計算（4分割）
    let half_width = width / 2;
    let half_height = height / 2;

    // 左上
    let top_left = img.view(0, 0, half_width, half_height).to_image();
    // 右上
    let top_right = img.view(half_width, 0, half_width, half_height).to_image();
    // 左下
    let bottom_left = img.view(0, half_height, half_width, half_height).to_image();
    // 右下
    let bottom_right = img
        .view(half_width, half_height, half_width, half_height)
        .to_image();

    [top_left, top_right, bottom_left, bottom_right]
}

pub fn merge_images(images: [RgbaImage; 4], width: u32, height: u32) -> RgbaImage {
    // 4分割した画像の幅と高さを計算
    let half_width = width / 2;
    let half_height = height / 2;

    // 新しい空の画像を作成（元のサイズ width x height）
    let mut merged_image = ImageBuffer::new(width, height);

    // 左上の画像をコピー
    for (x, y, pixel) in images[0].enumerate_pixels() {
        merged_image.put_pixel(x, y, *pixel);
    }

    // 右上の画像をコピー
    for (x, y, pixel) in images[1].enumerate_pixels() {
        merged_image.put_pixel(x + half_width, y, *pixel);
    }

    // 左下の画像をコピー
    for (x, y, pixel) in images[2].enumerate_pixels() {
        merged_image.put_pixel(x, y + half_height, *pixel);
    }

    // 右下の画像をコピー
    for (x, y, pixel) in images[3].enumerate_pixels() {
        merged_image.put_pixel(x + half_width, y + half_height, *pixel);
    }

    merged_image
}

pub fn is_complex(image: &RgbaImage, threshold: f32) -> bool {
    let (width, height) = image.dimensions();
    let mut brightness_values = Vec::with_capacity((width * height) as usize);

    // ピクセルの明度を計算
    for pixel in image.pixels() {
        let Rgba([r, g, b, _a]) = *pixel; // アルファ値は無視
                                          // 明度を計算 (相対明度の計算方法)
        let brightness = 0.2126 * r as f32 + 0.7152 * g as f32 + 0.0722 * b as f32;
        brightness_values.push(brightness);
    }

    // 明度の最大値と最小値を計算
    let max_brightness = brightness_values.iter().cloned().fold(0. / 0., f32::max); // -inf からの最大値
    let min_brightness = brightness_values
        .iter()
        .cloned()
        .fold(f32::INFINITY, f32::min); // +inf からの最小値

    // コントラストを評価 (明度の差がしきい値を超えた場合に高コントラストと判断)
    (max_brightness - min_brightness) > threshold
}

pub fn average_color_image(image: &RgbaImage) -> RgbaImage {
    let (width, height) = image.dimensions();
    let mut r_sum = 0u32;
    let mut g_sum = 0u32;
    let mut b_sum = 0u32;
    let mut count = 0u32;

    // 画像のすべてのピクセルの平均色を計算
    for pixel in image.pixels() {
        let Rgba([r, g, b, _a]) = *pixel;
        r_sum += r as u32;
        g_sum += g as u32;
        b_sum += b as u32;
        count += 1;
    }

    // 平均色を計算
    let r_avg = (r_sum / count) as u8;
    let g_avg = (g_sum / count) as u8;
    let b_avg = (b_sum / count) as u8;

    // 平均色で塗りつぶされた画像を作成
    let average_color = Rgba([r_avg, g_avg, b_avg, 255]);
    ImageBuffer::from_fn(width, height, |_, _| average_color)
}
