#' Grayscale filter
#'
#' Uses a vector_for_filter generated from your image by the apply_grayscale_filter function.
#' Generates a raw grayscale vector that will be processed into an image by the apply_grayscale_filter_function.
#' this function is built into another function. No need to use by itself.
#'



# Filter to convert the image to grey scale
grayscale_filter <- function(vector_for_filter) {
  # Process the vector in groups of three (R, G, B), for each color
  for (i in seq(1, length(vector_for_filter) - 2, by = 3)) {
    r <- vector_for_filter[i]
    g <- vector_for_filter[i + 1]
    b <- vector_for_filter[i + 2]
    # Calculate the grayscale value based on how the eye interprets gray
    gray <- round(0.299 * r + 0.587 * g + 0.114 * b)
    # Apply the grayscale value to R, G, B
    vector_for_filter[c(i, i + 1, i + 2)] <- gray # R = i , G = i + 1, B = i + 2
  }
  # Convert back to the raw format for future use
  as.raw(vector_for_filter)
}
