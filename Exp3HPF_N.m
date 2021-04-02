%reg no. - 19BCN7234
%Name - DIVYANSHU VASHISHT
%LAB - 57-58
%DATE - 06th march 2021
%Exp3 - How HPF is used as sharpening filter.
%Sharpening the image
clc;
clear all;
close all;
a = imread('cameraman.tif');
a1 = imread('lena_color_256.tif');
%to convert rgb to gray for color image 'a'
%I = rgb2gray(a1);
b = imsharpen(a);
b1 = imsharpen(a1);
%I1 = rgb2gray(b);

figure;
subplot(2,2,1);imshow(a);title('original image');
subplot(2,2,2);imshow(b);title('Sharpened image');
subplot(2,2,3);imshow(a1);title('original image');
subplot(2,2,4);imshow(b1);title('sharpened image');
p = psnr(b,a)
p1 = psnr(b1, a1)