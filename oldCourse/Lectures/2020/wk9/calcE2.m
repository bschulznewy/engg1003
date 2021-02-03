function [eValue] = calcE2(N)
tic
e = 0;

for n = 0:N
    e = e + 1/factorial(n);
end

eValue = e;
toc