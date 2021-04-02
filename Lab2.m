%storing the image I in another matrix f
%the size we're taking here is not s instead it's 512

clc
clear all;
I = imread("ImageName.jpg");%widthxheightx(3(for color RGB) or 1 (black/white))
s = size(I);

for i=1:512
    for j=1:512
        f(i,j,1)=I(i,j,1);
        f(i,j,2)=I(i,j,2);
        f(i,j,3)=I(i,j,3);
    end
end

%display the original image
subplot(2,2,1)
imshow(I)
%display the f matrix image
subplot(2,2,2)
imshow(f)