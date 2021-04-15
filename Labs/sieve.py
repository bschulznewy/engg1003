import numpy as np

N = 10000000

numbers = np.ones(N)

# do the thing
for i in range(2,N):
    if numbers[i] == 1:
        for j in range(2*i, N, i):
            numbers[j] = 0

# print the things
for i in range(2,N):
    if numbers[i] == 1:
        print(i)
