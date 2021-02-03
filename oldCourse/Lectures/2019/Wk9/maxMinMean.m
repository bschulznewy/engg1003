function stats = maxMinMean(x)

% Find maximum value
maxValue = x(1);

for n = 1:length(x)
    if x(n) > maxValue
        maxValue = x(n)
    end
end

% max
stats(1) = maxValue;

% min
stats(2) = min(x);

% mean
stats(3) = mean(x,"all");