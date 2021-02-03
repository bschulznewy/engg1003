clear all
x = imread("sunset.png");
x = x(1:20:end, 1:20:end,1);
x = double(x);
x = x / 255 * 60;

figure(1)
image(x);

s = size(x);

for r = 2:s(1)-1
    for c = 2:s(2)-2
        xBlurred(r,c) = (-1*x(r-1,c-1) + -2*x(r-1,c) + -1*x(r-1,c+1) ...
                        + 0*x(r,c-1) + 0*x(r,c) + 0*x(r,c+1) ...
                        + 1*x(r+1,c-1) + 2*x(r+1,c) + 1*x(r+1,c+1));
    end
end

xBlurred = abs(xBlurred);

figure(2)
image(xBlurred)