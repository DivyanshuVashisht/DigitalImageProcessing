function [OUTPUT] = DIFF(I)
K = uint8(filter2(fspecial('gaussian'),I));% gaussian filter is used for smoothening of images
OUTPUT= imabsdiff(I,K);% image absolute differece between I(original) and K(filtered) images
end