%NAME: DIVYANSHU VASHISHT
%REG NO: 19BCN7234
%DATE: 27 FEB 2021
%LAB L57-L58
clc;
clear all;
%plotting histogram of image with and without equalization
I=imread('TestImage1.jpg');
J = histeq(I);
imshowpair(I,J,'montage')
axis off
figure
imhist(I,64)
figure
imhist(J,64)