N = 10; % Iteration limit
x = linspace(-2,1,1000);
y = linspace(-1.4,1.4,1000);

[X Y] = meshgrid(x,y);

Zc = X+i*Y;
Z = zeros(size(Zc));

for k = 1:N
    Z = Z.^2 + Zc;
end

Z(abs(Z)>1e6) = 2;

modulus = abs(Z);

mu = N - log(log(modulus));

surf(abs(mu));
shading interp