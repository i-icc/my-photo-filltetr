mod image_lib;

use crate::image_lib::grayscale_fillter;
use image::{ImageBuffer, Rgba};
use std::fs::File;
use std::io::BufReader;

fn main() {
    // Define input and output paths
    const FILE_PATH: &str = "./test-images/logo.png";
    const GRAY_TEST_PATH: &str = "./test-images/grayscale_test.png";

    // Run the grayscale test
    if let Err(e) = grayscale_test(FILE_PATH, GRAY_TEST_PATH) {
        eprintln!("Error processing image: {}", e);
    }
}

// Grayscale conversion and saving to output file
fn grayscale_test(file_path: &str, output_path: &str) -> Result<(), Box<dyn std::error::Error>> {
    // Open image file
    let file = File::open(file_path).expect("Failed to open input image file");
    let reader = BufReader::new(file);

    // Load and convert the image to RGBA8
    let img = image::load(reader, image::ImageFormat::Png)
        .expect("Failed to load image")
        .to_rgba8();

    // Get image dimensions
    let (width, height) = img.dimensions();

    // Apply grayscale transformation
    let img_data = grayscale_fillter(&img, width, height);

    // Reconstruct the image and save it
    let output_img = ImageBuffer::<Rgba<u8>, _>::from_raw(width, height, img_data)
        .expect("Failed to create output image buffer");

    output_img
        .save(output_path)
        .expect("Failed to save output image");

    println!("Grayscale image saved to {}", output_path);
    Ok(())
}
