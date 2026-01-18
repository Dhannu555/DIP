\# Basics of Digital Image Processing (MATLAB)



This project demonstrates fundamental Digital Image Processing (DIP)

operations using MATLAB. The code covers basic matrix handling,

image reading, color space conversion, thresholding, and histogram

equalization.



---



\## Files

\- basics\_of\_dip.m – MATLAB source code

\- basics\_of\_dip.pdf – Published output showing results and figures

\- SRP\_3787.JPG – Input image used for processing (place in same folder)



---



\## Concepts Demonstrated



\### 1. Random Image Matrix Generation

An 8×8 matrix with values in the range 0–255 is generated to represent

basic grayscale pixel intensity data.



---



\### 2. Image Reading and Display

A color image is read from disk and displayed using MATLAB’s image

visualization functions.



---



\### 3. RGB to Grayscale Conversion

The RGB image is converted into a grayscale image to simplify

intensity-based processing.



---



\### 4. Red Channel Extraction

The red color component of the image is isolated by removing the

green and blue channels.



---



\### 5. Binary (Black \& White) Image Generation

A grayscale image is converted into a binary image using a fixed

threshold value of 127.



---



\### 6. Histogram Equalization

Histogram equalization is applied to the grayscale image to enhance

contrast and improve visibility of details.



---



\## How to Run

1\. Place the image file `SRP\_3787.JPG` in the same folder as `basics\_of\_dip.m`

2\. Open MATLAB

3\. Set the current folder to this directory

4\. Run the script by typing:

&nbsp;  basics\_of\_dip



---



\## Output

The program displays the following results:

\- Original RGB image

\- Grayscale image

\- Red channel image

\- Binary thresholded image

\- Histogram equalized image



---



\## Notes

\- This code is intended for learning and demonstration purposes

\- Histogram equalization uses MATLAB’s built-in `histeq` function

\- Output figures are included in the published PDF for easy viewing



---



\## Author

Dhananjay Agrahari



