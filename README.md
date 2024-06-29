# VeriPixel-Editor
## Image-processing-using-Verilog

## Overview
This project focuses on implementing general image operations on grayscale images using Verilog HDL. The design module can perform the following operations:
1. Increase Brightness
2. Decrease Brightness
3. Image Thresholding
4. Image Inversion

## Workflow
The workflow of the project is as follows:
1. **Data Preparation:** Use `img_txt.py` to create a `.txt` file containing pixel values of an image in 8-bit binary format.
2. **Simulation:** Pass the generated text file into the Verilog simulation source file (`tb_main.v`). The design module (`main.v`) handles the image processing operations.
3. **Processing:** The simulation source returns a text file with the processed image in a similar format as the input.
4. **Output Conversion:** Use `txt_img.py` to convert the text file obtained after simulation back into a `.jpg` file.

## Configuration
- **Adjustable Parameters:** Modify parameters such as brightness adjustment amount, threshold value, and operation type (`select`) in `Test_bench.v`.
  - `2’b00`: Increase Brightness
  - `2’b01`: Decrease Brightness
  - `2’b10`: Image Thresholding
  - `2’b11`: Image Inversion

## Example
Check the `images` folder for a test image and images obtained after applying each operation sequentially using `tb_main.v`.

## Images
- **Original Image:**\
  ![Original Image](https://github.com/Aryansh-kr/CurePolygon/assets/127012188/60b5ec19-5bde-4322-a85d-7d3a62d1a1a8)

- **Increased Brightness:**\
  ![Increased Brightness](https://github.com/Aryansh-kr/CurePolygon/assets/127012188/808df714-fe97-4e2f-9b11-d74ba902fcf9)

- **Decreased Brightness:**\
  ![Decreased Brightness](https://github.com/Aryansh-kr/CurePolygon/assets/127012188/3c9b2140-7935-4ed2-ab62-822fd64e8851)

- **Binarized Image:**\
  ![Binarized Image](https://github.com/Aryansh-kr/CurePolygon/assets/127012188/4a0a9b85-e499-4dab-aae6-3c67748a6aba)

- **Inverted Image:**\
  ![Inverted Image](https://github.com/Aryansh-kr/CurePolygon/assets/127012188/d19d4f6b-7249-4617-91a1-5694762af369)

## Future Work
Future enhancements for this project could include:
- Optimizing Verilog code for better performance.
- Implementing additional image processing algorithms.
- Exploring color image processing capabilities.

