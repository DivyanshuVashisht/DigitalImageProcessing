%REGNO>19BCN7234
%NAME>DIVYANSHU VASHISHT
%LAB-57-58
%Edge of an image using prewitt edge detection algorithm
clc;
clear all;
close all;
A = imread('lena_gray_256.tif');

A = im2double(A);
[m, n] = size(A);
Gx = zeros(m,n);
Gy = zeros(m,n);
G = zeros(m,n);
for i=2:(m-1)
    for j=2:(n-1)
        Gx(i,j)=(A(i-1,j+1) + A(i,j+1) + A(i+1,j+1)) - (A(i-1,j-1) + A(i,j-1) + A(i+1,j-1));
        Gy(i,j)=-(A(i-1,j-1) + A(i-1,j) + A(i-1,j+1)) + (A(i+1,j-1) + A(i+1,j) + A(i+1,j+1));
        G(i,j) = sqrt(Gx(i,j).^2 + Gy(i,j).^2);%common step for prewitt and sobel
    end
end
%figure
subplot(131); imshow(Gx); title("Gradient in X-Direction");
subplot(132); imshow(Gy); title("Gradient in Y-Direction");
subplot(133); imshow(G); title("Prewitt Edge Detected image");