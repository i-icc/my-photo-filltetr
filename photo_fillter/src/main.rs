mod image_lib;

use image::{ImageBuffer, Rgba, RgbaImage};
use image_lib::{average_color_image, grayscale_fillter, merge_images, split_image};
use std::fs::File;
use std::io::BufReader;

fn main() {
    // Define input and output paths
    const FILE_PATH: &str = "./test-images/logo.png";
    const GRAY_TEST_PATH: &str = "./test-images/grayscale_test.png";
    const SPLIT_TEST_PATH: &str = "./test-images/split_";
    const MERGE_TEST_PATH: &str = "./test-images/merge_test.png";

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

    // split test
    if let Err(e) = split_test(&img, width, height, SPLIT_TEST_PATH) {
        eprintln!("Error processing image: {}", e);
    }

    // merge test
    if let Err(e) = merge_test(
        split_image(&img, width, height),
        width,
        height,
        MERGE_TEST_PATH,
    ) {
        eprintln!("Error processing image: {}", e);
    }
}

fn split_test(
    img: &[u8],
    width: u32,
    height: u32,
    output_path: &str,
) -> Result<(), Box<dyn std::error::Error>> {
    let split_images = split_image(&img, width, height);
    for (i, img) in split_images.iter().enumerate() {
        img.save(format!("{}{}_test.png", output_path, i))
            .expect("Failed to save image");
    }
    Ok(())
}

fn merge_test(
    imgs: [RgbaImage; 4],
    width: u32,
    height: u32,
    output_path: &str,
) -> Result<(), Box<dyn std::error::Error>> {
    let mix_imgs = [
        imgs[1].clone(),
        imgs[2].clone(),
        average_color_image(&imgs[3]),
        imgs[0].clone(),
    ];
    let merged_image = merge_images(mix_imgs, width, height);
    merged_image
        .save(output_path)
        .expect("Failed to save image");
    Ok(())
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
