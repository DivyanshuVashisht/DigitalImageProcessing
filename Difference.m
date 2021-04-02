%Difference betweeen original image and gaussian filtered image
clc
clear all
I=imread("imagename.jpg");
I=I(:,:,1);
X=DIFF(I);

imshow(X)