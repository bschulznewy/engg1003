counter = 0;
aThreeHappened = 0;
N = 10000000;
tic
while counter < N
    a = randi(6);
    b = randi(6);
    if (a==3) || (b==3)
        aThreeHappened = aThreeHappened + 1;
    end
    counter = counter + 1;
end
aThreeHappened/counter
toc

tic
a = randi(6, N, 1);
b = randi(6, N, 1);
aThreeHappened = sum((a==3) | (b==3));
aThreeHappened/N
toc
