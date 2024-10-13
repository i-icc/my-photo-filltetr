mod image_lib;

use crate::image_lib::grayscale_fillter;
use wasm_bindgen::prelude::*;

#[wasm_bindgen]
pub fn grayscale(img_data: &[u8], width: u32, height: u32) -> Vec<u8> {
    return grayscale_fillter(img_data, width, height);
}
