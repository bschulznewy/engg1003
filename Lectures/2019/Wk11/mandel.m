rangex = linspace(-1.5, 1.5, 200);
rangey = linspace(1.5, -1.5, 200);

[X Y] = meshgrid(rangex, rangey);

points = X+i*Y;

Z = zeros(size(points));

for n = 1:50
	Z = Z.^2 + points;
end

surf(double(abs(Z) < 4))
