%Change color iamge to black and white
clc
clear all;
I = imread("imagename.jpg");
s=size(I);
In = im2bw(I);%black and white or gray scale image ALITER method "imbinarize"

subplot(2,2,1);
imshow(I)
subplot(2,2,1);
imshow(In)