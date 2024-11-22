# Apply red, green or blue filter
apply_color_filter <- function(image_path, color = "choose", output_path = "color_image.jpg") {
  # Load the image
  original_image <- image_read(image_path)
  # Convert the image to a bitmap and raw vector
  bitmap <- original_image[[1]]
  vector_for_filter <- as.integer(as.raw(bitmap))
  # Apply the color filter (red, green, or blue)
  color_raw <- color_filter(vector_for_filter, color = color)
  # Convert the processed raw vector back to a bitmap
  processed_bitmap <- convert_raw_to_bitmap(color_raw, bitmap)
  # Create the final image
  final_image <- image_read(processed_bitmap)
}
