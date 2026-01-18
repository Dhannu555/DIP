\# Histogram Equalization (MATLAB)



This project demonstrates \*\*histogram equalization\*\* on a grayscale image

using MATLAB. The implementation includes \*\*manual histogram computation\*\*,

\*\*CDF-based transformation\*\*, and comparison with MATLAB’s \*\*inbuilt

histeq()\*\* function.



An 8×8 grayscale image matrix is used to clearly illustrate each step of

the algorithm.



---



\## Files

\- histogram\_equalization.m – Main MATLAB script implementing histogram equalization

\- HistogramEqdata.m – MATLAB file containing the grayscale image data used in the project

\- histogram\_equalization.pdf – Published PDF showing outputs and plots



---



\## Input Data

The input image is an \*\*8×8 grayscale image matrix\*\* with intensity values

ranging from 0 to 255.



The pixel data is defined separately in `HistogramEqdata.m` to:

\- Keep data and logic modular

\- Improve readability

\- Make experimentation with different datasets easier



The data is converted to `uint8` format before processing.



---



\## Methodology



\### Step 1: Original Image and Histogram

\- The original grayscale image is displayed using `imshow`

\- Histogram is plotted using `imhist`

\- Intensity range is constrained between 0 and 255 for clarity



---



\### Step 2: Manual Histogram Calculation

The frequency of each gray level is computed manually:

\- A 256×1 histogram array is initialized

\- Nested loops traverse each pixel

\- Pixel values are indexed using `pixel\_value + 1`

\- Total number of pixels is computed as `M × N`



---



\## Method 1: Histogram Equalization Using PDF and CDF



\### Steps:

1\. Probability Density Function (PDF):

&nbsp;  histogram / total\_pixels

2\. Cumulative Distribution Function (CDF) computed from PDF

3\. Transformation function:

&nbsp;  T(k) = 255 × CDF(k)

4\. Each pixel is mapped using the transformation function



\### Output:

\- Histogram equalized image

\- Histogram of the equalized image



---



\## Method 2: Histogram Equalization Using Pixel Count CDF



\### Steps:

1\. CDF computed directly from histogram counts

2\. Transformation function:

&nbsp;  T(k) = ((CDF(k) − 1) / (total\_pixels − 1)) × 255

3\. Transformation values are rounded

4\. Pixels are remapped to generate the equalized image



\### Output:

\- Histogram equalized image

\- Histogram of the equalized image



---



\## Method 3: Histogram Equalization Using Inbuilt Function



MATLAB’s inbuilt function is used for comparison:

\- `histeq(image)`



This method serves as a validation for the manual implementations.



---



\## Results

The following are displayed:

\- Original image and histogram

\- Equalized images using Method 1, Method 2, and inbuilt method

\- Corresponding histograms for each method



All outputs and figures are included in the published PDF for easy viewing.



---



\## Learning Outcomes

\- Manual histogram computation

\- PDF and CDF calculation

\- Gray-level transformation functions

\- Comparison of manual and inbuilt histogram equalization

\- Clear understanding of internal working of histogram equalization



---



\## Notes

\- This project is intended for academic and learning purposes

\- Manual implementations are emphasized for conceptual clarity

\- The inbuilt function is used only for verification



---



\## Author

Dhananjay Agrahari



