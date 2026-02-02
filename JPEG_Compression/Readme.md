

#### **JPEG Image Compression Using DCT in MATLAB**



--------------------------------------------------





##### **Implementation of JPEG Image Compression Using Discrete Cosine Transform**



--------------------------------------------------



###### **DESCRIPTION:**

This program implements a simplified version of JPEG image compression

using the Discrete Cosine Transform (DCT) and quantization techniques.

The input image is divided into 8×8 blocks, transformed into the

frequency domain using DCT, quantized using a standard JPEG

quantization matrix, and then reconstructed using inverse DCT.



The effect of high compression is demonstrated by increasing the

quantization factor.



--------------------------------------------------



###### **OBJECTIVES:**

\- To understand the working principle of JPEG image compression

\- To implement block-based DCT and quantization in MATLAB

\- To analyze the effect of quantization on image quality

\- To reconstruct the compressed image using inverse DCT



--------------------------------------------------



###### **TECHNOLOGY USED:**

Programming Language: MATLAB



--------------------------------------------------



###### **INPUT:**

\- Input image file: rice.png

\- Image type: Grayscale (RGB converted to grayscale if needed)



--------------------------------------------------



###### **THEORY BACKGROUND:**

JPEG compression is a lossy image compression technique that reduces

image size by discarding less important high-frequency information.

The image is divided into 8×8 blocks and each block undergoes DCT to

separate frequency components.



Quantization is applied to reduce the precision of DCT coefficients,

which results in compression. The inverse operations are performed to

reconstruct the image.



--------------------------------------------------



###### **ALGORITHM STEPS:**

1\. Read the input image and convert it to grayscale if required

2\. Convert image to double precision

3\. Define the standard JPEG quantization matrix

4\. Multiply quantization matrix with a compression factor

5\. Divide image into 8×8 blocks

6\. Apply the following steps on each block:

&nbsp;  a. Level shift pixel values by subtracting 128

&nbsp;  b. Apply DCT to convert to frequency domain

&nbsp;  c. Quantize DCT coefficients

&nbsp;  d. Dequantize coefficients

&nbsp;  e. Apply inverse DCT

&nbsp;  f. Level shift pixel values back

7\. Reconstruct the image from processed blocks

8\. Display original and reconstructed images



--------------------------------------------------



###### **PROGRAM FLOW:**

\- Image acquisition and preprocessing

\- Block-wise DCT transformation

\- Quantization for compression

\- Inverse DCT for reconstruction

\- Visualization of results



--------------------------------------------------



###### **OUTPUT:**

\- Original input image

\- Reconstructed image after high JPEG compression



--------------------------------------------------



###### **FEATURES:**

\- Uses standard JPEG quantization matrix

\- Adjustable compression factor

\- Block-based image processing

\- Demonstrates lossy compression clearly



--------------------------------------------------



###### **LIMITATIONS:**

\- No entropy coding (Huffman or arithmetic coding not included)

\- Compression ratio not calculated

\- Blocking artifacts may appear at high compression



--------------------------------------------------



APPLICATIONS:

\- Digital image compression

\- Image storage and transmission

\- Multimedia systems

\- Digital image processing education



--------------------------------------------------



CONCLUSION:

This program successfully demonstrates JPEG image compression using

DCT and quantization techniques. It highlights how higher quantization

leads to reduced image quality while achieving compression, making it

useful for understanding lossy image compression concepts.



--------------------------------------------------



REFERENCES:

1\. Lecture notes and classroom instruction by Prof. Tapan Jain,

&nbsp;  Digital Image Processing, IIITN.

2\. MATLAB Documentation.



--------------------------------------------------



