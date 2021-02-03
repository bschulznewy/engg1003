clear all
N = 9999990;
numbers = logical(ones(1,N))';

tic
for index = 2:length(numbers)
    if numbers(index) == 1
        for j = 2*index:index:length(numbers)
            numbers(j) = 0;
        end
    end
end
toc

numbers = logical(ones(1,N))';
tic
for index = 2:length(numbers)
    if numbers(index) == 1
        numbers(2*index:index:length(numbers)) = 0;
    end
end
toc

return

% Display results
for index = 1:length(numbers)
    if numbers(index) == 1
        disp([index "is prime"])
    end
end

%FOR index = 2, 3, 4, ..., MAX
%    IF numbers[index] is 1
%        FOR j = 2*index, 3*index, 4*index, ... MAX
%            numbers[j] = 0
%        ENDFOR
%    ENDIF
%ENDFOR