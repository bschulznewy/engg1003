function [y] = sumProd(x)

% y = sum(x)/prod(x);

% calculate sum
s2 = 0;
for n=x
    s2 = s2 + n;
end

p = 1;
for n=x
    p = p * n;
end

y = s2/p;