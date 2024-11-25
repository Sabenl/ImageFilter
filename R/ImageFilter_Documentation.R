#' ImageFilter: A Package for Image Filtering
#'
#' The ImageFilter package provides tools for applying various filters to images,
#' including grayscale, cutoff, and two color-based filters.
#'
#' @section Main Functions:
#' Apply a specified filter to an image file and save the output.
#' - `apply_grayscale_filter`: Convert image data to grayscale.
#' - `apply_cutoff_filter`: Apply a cutoff filter to an image.
#' - `apply_RGB_color_filter`: Convert an image to red, green, or blue tones.
#' - `apply_any_color_filter`: Convert an image to any color by provided RGB values
#'
#' @examples
#' ##Libraries have to be loaded. Install if not already installed.
#' library(magick)
#'
#' ##Image path is defined before starting.
#' image_path <- "Test_image_1.jpg"
#' OR if it is in a different directory
#' image_path <- "Path/To/Image/Test_image_1.jpg"
#'
#' ## Apply the filter
#' gray_image <- apply_grayscale_filter(image_path)
#'
#' ## View the final image
#' print(gray_image)
#'
#' ##Save the final image as a JPEG, change path to the name and location desired.
#' image_write(gray_image, path = "gray_image.jpg", format = "jpeg")
