%NAME: DIVYANSHU VASHISHT
%REG NO: 19BCN7234
%DATE: 27 FEB 2021
%LAB L57-L58
clc;
clear all;
% Gaussian filter - used for the smoothening purposes of the image
% different from histogram distribution
% nature of gaussian filter - try to make the image blur because image is
% one type of low pass filter(high frequency to low frequency i.e. very
% high change to very low change)
I = imread('TestImage1.jpg');
I2=imread('TestImage.jpg');
I2=I2(:,:,1);% if img is not in grayscale

imshow(I)
subplot(2,2,1)
imshow(imgaussfilt(I,2))
subplot(2,2,2)
imshow(imgaussfilt(I,4))
subplot(2,2,3)
imshow(imgaussfilt(I,6))
subplot(2,2,4)
imshow(imgaussfilt3(I2,2))