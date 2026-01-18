clc;
clear all;
close all;

mat=randi([0 255],8,8);
disp(mat);

img= imread('SRP_3787.JPG');
 figure;
 imshow(img);
 

 gray=rgb2gray(img);
 figure;
 imshow(gray);
 
 ired=img;
ired(:,:,2)=0;
 ired(:,:,3)=0;
 figure;
 imshow(ired);
 
 BlackWhite= gray>127;
 figure;
 imshow(BlackWhite);
 
 Eqpic=histeq(gray);
 figure;
 imshow(Eqpic);