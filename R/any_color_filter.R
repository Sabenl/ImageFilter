# Filter to convert the image to any color by supplying RGB values
any_color_filter <- function(vector_for_filter, any_color = c(155, 0, 155), blend_factor = 0.5) {
  # Apply the chosen color values with blending (blending to not make every pixel the same color)
  for (i in seq(1, length(vector_for_filter) - 2, by = 3)) {
    # Blend original colors with the custom color
    vector_for_filter[i] <- round(vector_for_filter[i] * (1 - blend_factor) + any_color[1] * blend_factor)     # Red
    vector_for_filter[i + 1] <- round(vector_for_filter[i + 1] * (1 - blend_factor) + any_color[2] * blend_factor) # Green
    vector_for_filter[i + 2] <- round(vector_for_filter[i + 2] * (1 - blend_factor) + any_color[3] * blend_factor) # Blue
  }
  # Convert back to raw format
  as.raw(vector_for_filter)
}
