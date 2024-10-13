use image::{GenericImageView, ImageBuffer, RgbaImage};

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
