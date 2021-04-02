%regNo. - 19BCN7234
%Name - DIVYANSHU VASHISHT
%lab - 57-58
%DATE - 13th Feb 2021
%Exp1 - Image Rotation
clc;
clear all;
I = imread("TestImage1.jpg");
J = imrotate(I, 30, 'nearest', 'crop');%rotates the image by 30 degrees
subplot(2,2,1)
imshow(I)
subplot(2,2,2)
imshow(J)