%plotting histogram of image with and without equalization

clc;
clear all;

I=imread('TestImage1.jpg');
J = histeq(I);
imshowpair(I,J,'montage')
axis off
figure
imhist(I,64)
figure
imhist(J,64)
