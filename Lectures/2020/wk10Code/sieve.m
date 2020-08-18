MAX = 100000;

% Using loops
tic
numbers = ones(1,MAX);
for idx = 2:MAX
    if numbers(idx) == 1
        for j = 2*idx:idx:MAX
            numbers(j) = 0;
        end
    end
end
toc

tic
numbers = ones(1,MAX);
for idx = 2:MAX
    if numbers(idx) == 1
        numbers(2*idx:idx:MAX) = 0;
    end
end
toc