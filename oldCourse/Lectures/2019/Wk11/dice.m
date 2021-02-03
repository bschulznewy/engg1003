clear all

N = 10000000;

tic
a = rand(1,N);
b = pi*a;
toc

tic
a2 = rand(1,N);
for n = 1:N
    b2(n) = a2(n)*pi;
end
toc

tic
a2 = rand(1,N);
b2 = zeros(size(a2));
for n = 1:N
    b2(n) = a2(n)*pi;
end
toc