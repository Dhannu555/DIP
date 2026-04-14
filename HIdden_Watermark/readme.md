# **DCT Image Watermarking**



## **Overview**

Implements DCT-based digital image watermarking (inspired by late 1990s research).

Watermark is embedded in mid-frequency coefficients for a balance of invisibility and robustness.



## **Method**

1.Split image into 8×8 blocks

2.Apply DCT

3.Modify coefficient (4,4):

&#x20;  +0.05 → 1, -0.05 → 0

4\.Apply key-based permutation

5\.Extract via coefficient difference

&#x09;​

&#x09;




## **References**

1\. C.-T. Hsu and J.-L. Wu, “Hidden Digital Watermarks in Images,” IEEE Trans. Image Process.,

&#x20;  vol. 8, no. 1, pp. 58–68, Jan. 1999.

2\. I. J. Cox et al., “Secure Spread Spectrum Watermarking,” IEEE, 1995.

3\. M. Swanson et al., “Robust Image Watermarking,” Proc. ICIP, 1996.





## **Author**

Dhananjay Agrahari

Anubhav Rathore

Aman kanaujiya

Sandesh Jat



