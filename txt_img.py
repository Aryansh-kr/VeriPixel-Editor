import numpy as np
from PIL import Image as im

def save_image(array, name):
    # Create image object from array
    image_data = im.fromarray(array.astype('uint8'), 'L')
    # Save as PNG file
    image_data.save(name)

def binary_to_decimal(binary):
    decimal = 0
    power = 0
    while binary != 0:
        dec = binary % 10
        decimal += dec * (2 ** power)
        binary //= 10
        power += 1
    return decimal

def make_array(file):
    lines = file.readlines()
    array_list = []
    for line in lines:
        line = line.strip()
        decimal_value = binary_to_decimal(int(line, 2))
        array_list.append(decimal_value)
    array_np = np.array(array_list)
    array_np = np.reshape(array_np, (256, 384))
    return array_np

# Open file and create image arrays
file_0 = open("result.txt")
img_array_0 = make_array(file_0)

# Save images
save_image(img_array_0, "output.jpg")
