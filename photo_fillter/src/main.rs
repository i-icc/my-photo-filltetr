mod image_lib;

use image::{ImageBuffer, Rgba};
use image_lib::grayscale_fillter;
use std::fs::File;
use std::io::BufReader;

fn main() {
    // Define input and output paths
    const FILE_PATH: &str = "./test-images/logo.png";
    const GRAY_TEST_PATH: &str = "./test-images/grayscale_test.png";

    let file = File::open(FILE_PATH).expect("Failed to open input image file");
    let reader = BufReader::new(file);

    // Load and convert the image to RGBA8
    let img = image::load(reader, image::ImageFormat::Png)
        .expect("Failed to load image")
        .to_rgba8();

    // Get image dimensions
    let (width, height) = img.dimensions();

    // Run the grayscale test
    if let Err(e) = grayscale_test(&img, width, height, GRAY_TEST_PATH) {
        eprintln!("Error processing image: {}", e);
    }
}

fn grayscale_test(
    img: &[u8],
    width: u32,
    height: u32,
    output_path: &str,
) -> Result<(), Box<dyn std::error::Error>> {
    // Apply grayscale transformation
    let img_data = grayscale_fillter(&img, width, height);

    // Reconstruct the image and save it
    let output_img = ImageBuffer::<Rgba<u8>, _>::from_raw(width, height, img_data)
        .expect("Failed to create output image buffer");

    output_img
        .save(output_path)
        .expect("Failed to save output image");
    Ok(())
}
