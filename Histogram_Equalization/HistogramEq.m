clear all; 
close all;
clc;

img = [
52 55 61 59 79 61 76 61
62 59 55 104 94 85 59 71
63 65 66 113 144 104 63 72
64 70 70 126 154 109 71 69
67 73 68 106 122 88 68 68
68 79 60 70 77 66 58 75
69 85 64 58 55 61 65 83
70 87 69 68 65 73 78 90
];
img = uint8(img);

figure;
imshow(img,'InitialMagnification','fit');
title("Original image")

figure;
imhist(img)
xlim([0 255]);     % keep intensities inside range
ylim([0 5]);       % adjust based on max frequency
title("histogram of original image")

[M, N]=size(img);
total_pixels = M*N;

%this section stores the count of each pixel value
hist = zeros(256,1);
for ii = 1:M
    for jj = 1:N
        hist(img(ii,jj)+1) = hist(img(ii,jj)+1) + 1;
    end
end
%METHOD 1
%calculation of Cumulative Distribution Function using pdf
pdf1=hist/total_pixels;
cdf1 = zeros(256,1);   
cdf1(1) = pdf1(1);     
for k = 2:256
    cdf1(k) = cdf1(k-1) + pdf1(k);
end

%transformation function
T1 = uint8(255 * cdf1);

%Transformation to Image
I_eq1 = zeros(M,N,'uint8');
for ii = 1:M
    for jj = 1:N
        I_eq1(ii,jj) = T1(img(ii,jj)+1);
    end
end

%Show equalized image and its histogram
figure;
imshow(I_eq1,'InitialMagnification','fit');
title('Histogram Equalized Image Using Method 1');

figure;
imhist(I_eq1);
xlim([0 255]);     % keep intensities inside range
ylim([0 5]);       % adjust based on max frequency
title('Histogram of Equalized Image Using Method 1');


%METHOD 2
%calculation of Cumulative Distribution Function using count
cdf2 = zeros(256,1);   
cdf2(1) = hist(1);     
for ii = 2:256
    cdf2(ii) = cdf2(ii-1) + hist(ii);
end

%transformation function
T2=zeros(256,1);
for ii=1:256
    T2(ii)=((cdf2(ii)-1)/(total_pixels-1)*255);
end
T_r2=round(T2);
I_eq2 = zeros(M,N,'uint8');

%Transformation to Image
for ii = 1:M
    for jj = 1:N
        I_eq2(ii,jj) = T_r2(img(ii,jj)+1);
    end
end

%Show equalized image and its histogram
figure;
imshow(I_eq2,'InitialMagnification','fit');
title('Histogram Equalized Image Using Method 2');

figure;
imhist(I_eq2);
xlim([0 255]);     % keep intensities inside range
ylim([0 5]);       % adjust based on max frequency
title('Histogram of Equalized Image Using Method 2');

%Using inbuilt function
I_eq3=histeq(img);

%Show equalized image and its histogram
figure;
imshow(I_eq3,'InitialMagnification','fit');
title('Histogram Equalized Image Using Inbuilt Function');

figure;
imhist(I_eq3);
xlim([0 255]);     % keep intensities inside range
ylim([0 5]);       % adjust based on max frequency
title('Histogram of Equalized Image Using Inbuilt Function');




