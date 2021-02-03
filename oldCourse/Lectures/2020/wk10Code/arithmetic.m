function y = arithmetic(a, b, op)
    switch op
        case 0
            y = a+b;
        case 1
            y = a-b;
        case 2
            y = a.*b;
        case 3
            y = a./b;
        otherwise
            disp("Illegal op")
end