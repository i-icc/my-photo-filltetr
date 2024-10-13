use image::RgbaImage;

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
