function [eValue] = calcE(N)
tic

n = 0:N;

eValue = sum(1./factorial(n));

toc