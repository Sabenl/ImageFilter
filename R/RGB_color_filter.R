# Filter to convert the image to red, blue, green
color_filter <- function(vector_for_filter, color = "red") {
  for (i in seq(1, length(vector_for_filter) - 2, by = 3)) {
    if (color == "red") { # If the function calls for red, remove the other colors (green and blue)
      vector_for_filter[i + 1] <- 0  # Remove green
      vector_for_filter[i + 2] <- 0  # Remove blue
    } else if (color == "green") { # If the function calls for green, remove the other colors (red and blue)
      vector_for_filter[i] <- 0      # Remove red
      vector_for_filter[i + 2] <- 0  # Remove blue
    } else if (color == "blue") { # If the function calls for blue, remove the other colors (red and green)
      vector_for_filter[i] <- 0      # Remove red
      vector_for_filter[i + 1] <- 0  # Remove green
    }
  }
  # Convert back to the raw format for future use
  as.raw(vector_for_filter)
}
