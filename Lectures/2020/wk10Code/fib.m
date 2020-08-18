clear all

N = 20;
x = [1 1];

for idx = 3:N
    x(idx) = x(idx-1) + x(idx-2);
end
