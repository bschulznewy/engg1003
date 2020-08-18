clear all
x = imread("sunset.png");
%xSmall = x(1:10:end, 1:10:end,:);

x = uint8((double(x)-128)*1.6 + 128);

image(x)