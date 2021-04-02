% Generation of ChessBoardImage
clc;
clear all;
TILE = [255 0 255 0 255 0 255 0;
        0 255 0 255 0 255 0 255;
        255 0 255 0 255 0 255 0;
        0 255 0 255 0 255 0 255;
        255 0 255 0 255 0 255 0;
        0 255 0 255 0 255 0 255;
        255 0 255 0 255 0 255 0;
        0 255 0 255 0 255 0 255];
subplot(2,2,1);
imshow(TILE);
I = checkerboard > 0.5;%using the checkerboard command
subplot(2,2,2);
imshow(I)
