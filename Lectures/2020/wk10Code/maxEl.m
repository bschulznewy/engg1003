function max = maxEl(a)  
    s = size(a);
    if (length(s) > 2) || (min(s) ~= 1)
        disp("This function only works with 1D arrays")
        return
    end
    
    % If we get here, a is row of col vector
    max = a(1);
    for j = 1:length(a)
        if a(j) > max
            max = a(j);
        end
    end
end