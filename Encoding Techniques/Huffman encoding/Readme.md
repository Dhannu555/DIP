### **Huffman Encoding (MATLAB Demonstration)**



This project shows the Huffman encoding technique using simple symbol probabilities instead of full image data. While Huffman coding is often used for image compression, we use a small probability set here. This makes it clearer, speeds up computation, and aids understanding.



#### **Objective**



\- Understand the logic of Huffman encoding

\- Manually construct a Huffman tree

\- Generate prefix-free variable-length codes

\- Check optimality through average code length



#### **Why Rudimentary Values Were Used**

Using Huffman coding directly on images involves:

\- Computing histograms of 256 gray levels

\- Building large Huffman trees

\- Increased computation and simulation time

For demonstration and learning, we use a small set of symbols with known probabilities to clearly illustrate:

\- Tree construction

\- Code assignment

\- Compression behavior based on entropy



#### **Methodology**



\- Define symbols and their probabilities

\- Merge the two least probable symbols iteratively

\- Construct the Huffman tree

\- Assign binary codes using tree traversal

\- Compute average code length



#### **Key Concepts Demonstrated**



\- Lossless entropy encoding

\- Prefix-free coding

\- Probability-based bit assignment

\- Relationship between entropy and average code length



#### **Note on Image Encoding**



The same Huffman encoding logic can be applied to images by:



\- Treating pixel values as symbols

\- Using image histograms as probabilities



This implementation focuses on understanding the algorithm, which can later be expanded to full image compression processes.



#### **Author**



Dhananjay Agrahari

