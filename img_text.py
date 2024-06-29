import cv2
import numpy as np

# Read the image in grayscale
img = cv2.imread(r"C:\Users\Lenovo\Downloads\images.jpg", 0)

# Display image data and dimensions
print("Original Image:")
print(img)
print("Image Shape:", img.shape)

height, width = img.shape[:2]
print("Image Height:", height)
print("Image Width:", width)

# Convert each pixel value to 8-bit binary and save to a text file
with open("image.txt", 'w') as file:
    for i in range(height):
        for j in range(width):
            file.write(np.binary_repr(img[i][j], width=8) + "\n")

print("Image conversion to binary complete. Output saved in 'image.txt'.")
