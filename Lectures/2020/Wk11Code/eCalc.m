function eValue = eCalc(N)

tic
mySum = 2;
runningFactorial = 1;

for n = 2:N
    runningFactorial = runningFactorial * n;
    mySum = mySum + 1/runningFactorial;
end
eValue = mySum;
toc

tic
eValue = sum(1./factorial(0:N));
toc