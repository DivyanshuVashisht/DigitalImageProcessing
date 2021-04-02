%reg no. - 19BCN7234
%Name - DIVYANSHU VASHISHT
%LAB - 57-58
%DATE - 06th march 2021
%Exp3 - Apply Weighted Average Noise filter with different masks.
clc;
clear all;
close all;
%Read Image for Noise Addition
img = imread('cameraman.tif');
%Adding Noise to 'img'
Noi_img = imnoise(img, 'salt & pepper', 0.02);
%mask definition
f = 1/16*[1,2,1;2,4,2;1,2,1];
f1 = 1/9*[1,1,1;1,1,1;1,1,1];
%Apply filter2 function
de_noi=filter2(f, Noi_img);
de_noi1=filter2(f1, Noi_img);

figure;
subplot(2,2,1);imshow(img);title('Original image');
subplot(2,2,2);imshow(Noi_img);title('Noisy image');
subplot(2,2,3);imshow(uint8(de_noi));title('Denoised image 1/16');
subplot(2,2,4);imshow(uint8(de_noi1));title('Denoised image 1/9');