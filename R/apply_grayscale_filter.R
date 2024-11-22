# Apply grayscale filter
apply_grayscale_filter <- function(image_path, output_path = "output_image.jpg") {
  # Load the image
  original_image <- image_read(image_path)
  # Convert the image to a bitmap and raw vector
  bitmap <- original_image[[1]]
  vector_for_filter <- as.integer(as.raw(bitmap))
  # Apply the grayscale filter
  grayscale_raw <- grayscale_filter(vector_for_filter)
  # Convert the processed raw vector back to a bitmap
  processed_bitmap <- convert_raw_to_bitmap(grayscale_raw, bitmap)
  # Create the final image
  final_image <- image_read(processed_bitmap)
}
