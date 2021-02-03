clear all

N=10000000

y = rand(N,1);

tic
y(N+1) = 0;
toc