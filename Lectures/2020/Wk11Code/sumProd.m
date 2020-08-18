function y = sumProd(x)

sum = 0;
prod = 1;

for idx = 1:length(x)
    sum = sum + x(idx);
    prod = prod * x(idx);
end

y = sum/prod;