countTotal = 0;
countInside = 0;
N = 10e6;

tic
while(countTotal < N)
    x = rand(1);
    y = rand(1);
    
    countTotal = countTotal + 1;
    if(x*x + y*y < 1)
        countInside = countInside + 1;
    end
end
ourPi = 4*countInside/countTotal
toc

tic
x = rand(1,N);
y = rand(1,N);
countInside = sum(x.*x + y.*y < 1)
ourPi2 = 4*countInside/N
toc