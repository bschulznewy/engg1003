clear all
x = imread("sunset.png");

r = double(x(:,:,1));
g = double(x(:,:,2));
b = double(x(:,:,3));

%r = (x(:,:,1));
%g = (x(:,:,2));
%b = (x(:,:,3));


grey = (r+g+b)/3;

greyscaleImage(:,:,1) = grey;
greyscaleImage(:,:,2) = grey;
greyscaleImage(:,:,3) = grey;

greyscaleImage(:,:,1) = x(:,:,1)*0.3+x(:,:,2)*0.3 + x(:,:,3)*0.3;

%greyscaleImage = greyscaleImage/255;
%image(greyscaleImage);
greyscaleImage = uint8(greyscaleImage);
image(greyscaleImage);
