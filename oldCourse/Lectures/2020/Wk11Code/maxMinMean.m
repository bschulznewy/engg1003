function stats = maxMinMean(x)

%stats = [max(x) min(x) mean(x)];

max = x(1);
min = x(1);
sum = 0;

for idx = 1:length(x)
    sum = sum + x(idx);
    
    if(x(idx) > max)
        max = x(idx);
    end
    
    if(x(idx) < min)
        min = x(idx);
    end
end
mean = sum/length(x);

stats = [max min mean];