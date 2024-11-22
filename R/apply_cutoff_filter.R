#' Applies the cutoff filter to a grayscale image
#'
#' Loads the image from your directory and converts it into a bitmap and the vector_for_filter
#' required for the filter functions. Returns a final_image with your applied filter which can
#' be printed or saved. Uses both the filter function and the convert to bitmap function.
#'
#' Example:
#' apply_cutoff_filter(image_path, output_path = "cutoff_image.jpg")
#' Will generate an "final_image" object.
#'



# Apply cutoff filter
apply_cutoff_filter <- function(image_path, cutoff = 127, output_path = "cutoff_image.jpg") {
  # Load the image
  original_image <- image_read(image_path)
  # Convert the image to a bitmap and raw vector
  bitmap <- original_image[[1]]
  vector_for_filter <- as.integer(as.raw(bitmap))
  # Apply the grayscale filter first (required before applying the cutoff filter)
  grayscale_raw <- grayscale_filter(vector_for_filter)
  # Apply the cutoff filter to the grayscale vector
  cutoff_raw <- grayscale_filter_cutoff(grayscale_raw, cutoff)
  # Convert the processed raw vector back to a bitmap
  processed_bitmap <- convert_raw_to_bitmap(cutoff_raw, bitmap)
  # Create the final image
  final_image <- image_read(processed_bitmap)
}
