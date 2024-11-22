################################# Run the functions #######################################

#### Load libraries
library(magick)

##### Load the image
# Assign the path to the image you want to use in the filter (replace with your file path)
image_path <- "Path/to/your/image_1.jpg"

##### Apply the chosen filter to your image
# Grayscale filter
gray_image <- apply_grayscale_filter(image_path, output_path = "gray_image.jpg")
# View the final image
print(gray_image)
# Save the final image as a JPEG, change path to the name and location desired.
image_write(gray_image, path = "gray_image.jpg", format = "jpeg")

# Cutoff filter to the grayscale vector (requires the grayscale filter to have been run first)
cutoff_image <- apply_cutoff_filter(image_path, output_path = "cutoff_image.jpg")
# View the final image
print(cutoff_image)
# Save the final image as a JPEG, change path to the name and location desired.
image_write(cutoff_image, path = "cutoff_image.jpg", format = "jpeg")

# Red, green or blue filter. Insert color "red", "blue" or "green" instead of "color" and change the output_path name.
color_image <- apply_color_filter(image_path, color = "color", output_path = "color_image.jpg")
# View the final image
print(color_image)
# Save the final image as a JPEG, change path to the name and location desired.
image_write(color_image, path = "color_image.jpg", format = "jpeg")

# Any color filter, by supplying RGB values (any_color = c(0-255, 0-255, 0-255)). Also change the name and path of the output image if needed.
any_color_image <- apply_any_color_filter(image_path, any_color = c(255, 0, 255), output_path = "any_color_image.jpg")
# View the final image
print(any_color_image)
# Save the final image as a JPEG, change path to the name and location desired.
image_write(any_color_image, path = "any_color_image.jpg", format = "jpeg")
