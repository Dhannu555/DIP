clc;
clear all;
close all;

I = imread('SRP_3787.JPG');
if size(I,3)==3
 I=rgb2gray(I);
end

[rows, cols]=size(I); 

figure;
imshow(I);

bit_planes=zeros(rows, cols, 8);

for k=1:8 
 power=2^(k-1);
 for i=1:rows
 for j=1:cols %for each element
 bit_planes(i,j,k)=mod(floor(double(I(i,j))/power), 2);
 end
 end
end
figure;
for k = 1:8
 subplot(2,4,k)
 imshow(bit_planes(:,:,k),[]) 
end

 