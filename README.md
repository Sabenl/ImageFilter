# Package description
A package that contains different image filters to apply to you image.
Contains four different filters; grayscale, cutoff, red/green/blue and chosen 
color based on RBG values. Provide the path to your image and the package will
enable you to apply the different filters and save the image to your directory.
You need to load your image path to the object "image_path" and loaf both the 
magick and ImageFilter library. Then you can use the provided "apply_filter"
functions to generate a filtered image which can then be saved. 

Contains:
- Functions which filter the image
- Functions which apply the filters
- Function to convert the raw vector to a image # Or build if you open the R project file


# How to run the package and examples 
**Install packages**  
install.packages("magick")  
install.packages("ImageFilter") 

**Load libraries**  
library(ImageFilter)  
library(magick)


**Load the image**  
**Assign the path to the image you want to use in the filter (replace with your file path or image name if in the working directory)**  
image_path <- "Test_image_1.jpg"  


**Apply the chosen filter to your image**  
**Assign the filter function to an object to be able to print and save the image**

**Grayscale filter**  
gray_image <- apply_grayscale_filter(image_path)   
**View the final image**  
print(gray_image)  
**Save the final image as a JPEG, change path to the name and location desired**  
image_write(gray_image, path = "gray_image.jpg", format = "jpeg")

**Cutoff filter to the grayscale vector (requires the grayscale filter to have been run first)**  cutoff_image <- apply_cutoff_filter(image_path)  
**View the final image**  
print(cutoff_image)  
**Save the final image as a JPEG, change path to the name and location desired.**  
image_write(cutoff_image, path = "cutoff_image.jpg", format = "jpeg")

**Red, green or blue filter. Insert color "red", "blue" or "green" and change the output_path name.** 
color_image <- apply_color_filter(image_path, color = "red")  
**View the final image**  
print(color_image) 
**Save the final image as a JPEG, change path to the name and location desired.**  
image_write(color_image, path = "color_image.jpg", format = "jpeg")
  
**Any color filter, by supplying RGB values (any_color = c(0-255, 0-255, 0-255))**  
any_color_image <- apply_any_color_filter(image_path, any_color = c(255, 0, 255))  
**View the final image**  
print(any_color_image)  
**Save the final image as a JPEG, change path to the name and location desired.**  
image_write(any_color_image, path = "any_color_image.jpg", format = "jpeg")
