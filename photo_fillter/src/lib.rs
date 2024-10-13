mod image_lib;

use crate::image_lib::{bytes_to_rgba_image, grayscale_fillter, original_pixcel_fillter};
use wasm_bindgen::prelude::*;

#[wasm_bindgen]
pub fn grayscale(img_data: &[u8], width: u32, height: u32) -> Vec<u8> {
    return grayscale_fillter(img_data, width, height);
}

#[wasm_bindgen]
pub fn original_pixcel(img_data: &[u8], width: u32, height: u32) -> Vec<u8> {
    let img = bytes_to_rgba_image(img_data, width, height);
    let fillterd_img = original_pixcel_fillter(img, 50.0, 0, 10);
    return fillterd_img.as_raw().to_vec();
}
