function [eValue] = calcE3(N)
tic
e = 0;

for n = 0:N
    fac = 1;
    for c = 1:n
        fac = fac * c;
    end
    e = e + 1/fac;
end

eValue = e;
toc