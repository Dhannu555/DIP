clear all;
close all;
clc;

img=imread('cameraman.tif');
figure;
imshow(img);
title('Original Image')

[cA,cH,cV,cD] = dwt2(img,'haar');
rImg = idwt2(cA,cH,cV,cD,'haar');
cA=uint8(255*mat2gray(cA));
cH=uint8(255*mat2gray(cH));
cV=uint8(255*mat2gray(cV));
cD=uint8(255*mat2gray(cD));
figure;
subplot(2,2,1);
imshow(cA);

title('Approximation')
subplot(2,2,2);
imshow(cH);
title('Horizontal')

subplot(2,2,3);
imshow(cV);
title('Vertical');

subplot(2,2,4);
imshow(cD);
title('detailed')


