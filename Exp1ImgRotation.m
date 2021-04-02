%Image Rotation
clc;
clear all;
I = imread("TestImage1.jpg");
J = imrotate(I, 30, 'nearest', 'crop');%rotates the image by 30 degrees
subplot(2,2,1)
imshow(I)
subplot(2,2,2)
imshow(J)
