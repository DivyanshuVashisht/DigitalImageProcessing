%Blurring and Deblurring an image
%Write down code for blurring and de-blurring of a gray scale images;
%compare in terms of PSNR between blurring and de-blurring images
clc;
clear;
close all;
%matlab program for debluring a motion blurred image using wiener filter
I = im2double(imread('cameraman.tif'));
%Simulate a Motion Blur
%defining the width of blurred pixels
LEN = 20;
%defining the angle of blur
THETA = 10;
PSF = fspecial('motion', LEN, THETA);
blurred = imfilter(I,PSF, 'conv', 'circular');
%restoring the blurred image using wiener filter
wnr1 = deconvwnr(blurred, PSF, 0);
subplot(1,3,1); 
imshow(I);title('Original Image');
subplot(1,3,2);
imshow(blurred);title('Motion Blurred');
subplot(1,3,3);
imshow(wnr1);title('using wiene');
%Using psnr we can compare the two images i.e. blurred and de-blurred.
p = psnr(wnr1, blurred)
