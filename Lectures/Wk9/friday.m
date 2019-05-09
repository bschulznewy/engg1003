x = imread("sunset.png");
r = double(x(:,:,1));
g = double(x(:,:,2));
b = double(x(:,:,3));

total = r+g+b;
greyscale = total/3;

output(:,:,1) = greyscale;
output(:,:,2) = greyscale;
output(:,:,3) = greyscale;

map = linspace(0,1,255);
map = [map' map' map'];

figure(1)
image(r)
axis equal
colorbar
colormap(map)

figure(2)
image(g)
axis equal
colorbar
colormap(map)

figure(3)
image(g)
axis equal
colorbar
colormap(map)

figure(4)
image(greyscale)
axis equal
colorbar
colormap(map)

