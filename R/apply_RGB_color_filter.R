#' Applies the RGB color filter
#'
#' Loads the image from your directory and converts it into a bitmap and the vector_for_filter
#' required for the filter functions. Returns a final_image with your applied filter which can
#' be printed or saved. Uses both the filter function and the convert to bitmap function.
#'
#'@param image_path # an object to which you have assigned the path or name (if in WD) to the image you want to filter.
#'@param color = "red" # the color (red, blue or green) you want to add to your image.
#'@return a filtered image converted back to a bitmap
#'
#' @examples
#' # example code
#'
#' library(magick)
#' image_path <- "Path/to/your/image_1.jpg"
#' filtered_image <- apply_color_filter(image_path)
#' # Will generate an "filtered_image" object which can be printed and saved.
#' print(filtered_image) # View the final image
#' image_write(filtered_image, path = "my_image.jpg", format = "jpeg") # Save the final image as a JPEG.
#'


# Apply red, green or blue filter
apply_color_filter <- function(image_path, color = "red") {
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
