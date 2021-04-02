%regNo. - 19BCN7234
%Name - DIVYANSHU VASHISHT
%lab - 57-58
%DATE - 13th Feb 2021
%Exp1 - Generation of ChessBoardImage
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