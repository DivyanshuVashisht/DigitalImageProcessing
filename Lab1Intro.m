I = imread("photo_name.jpg"); %to read the image
imshow(I)%to display the image

%Selection of features%
testimage = imread("photo_name.jpg");
test=testimage(:, :, 1);
z = 1;
e3=zeroes(1, z);

sze=size(testimage);
