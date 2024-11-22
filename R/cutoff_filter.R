#' Cutoff filter
#'
#' Uses a vector_for_filter generated from your image by the aapply_cutoff_filter function.
#' Generates a raw cutoff vector that will be processed into an image by the apply_cutoff_filter function.
#' this function is built into another function. No need to use by itself.
#'


# Cut off filter to combine with the grayscale filter
grayscale_filter_cutoff <- function(vector_for_filter, cutoff = 127) {
  # Convert the raw vector to integers for calculations
  vector_for_filter <- as.integer(vector_for_filter)
  # Process the vector in groups of three (R, G, B)
  for (i in seq(1, length(vector_for_filter) - 2, by = 3)) {
    gray <- vector_for_filter[i]  # Assuming R, G, B are the same after grayscale conversion
    # Apply cutoff filter
    if (gray < cutoff) {
      gray <- 0  # If below the cutoff, set to black
    } else {
      gray <- 255  # If above the cutoff, set to white
    }
    # Assign the cutoff value to R, G, B
    vector_for_filter[c(i, i + 1, i + 2)] <- gray # R = i , G = i + 1, B = i + 2
  }
  # Convert back to raw format for future use
  as.raw(vector_for_filter)
}
