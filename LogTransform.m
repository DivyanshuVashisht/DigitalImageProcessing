%Log Transform
clc;
clear all;
I = imread("TestImage1.jpg");%Read the image
a = double(I)/255;%Normalized image
c = 2;%Constant
f = c*log(1+(a));%Log Transform
%Significance - makes the image brighter by increasing the intensity of the
%pixels
subplot(1,2,1), imshow(I), title("Original Image");
subplot(1,2,2), imshow(f), title("Log Transform Image");
f=255*f;%Get Back to original form(b/c of normalization)
f = uint8(f);% b/c of double
P = psnr(f,I)%peek signal noise ratio - info of preserving the originality
S = ssim(f,I)%structural similarity index - difference b/w edges
%note: if ssim <=0.5 then not good technique 
