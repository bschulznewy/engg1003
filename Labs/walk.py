import numpy as np
import matplotlib.pyplot as plt
N = 1000
x = np.zeros(N)
y = np.zeros(N)

for i in range(1,N):
    #x[i] = x[i-1] + np.random.uniform(-1,1,1)
    #y[i] = y[i-1] + np.random.uniform(-1,1,1)
    x[i] = x[i-1] + np.random.randn(1)
    y[i] = y[i-1] + np.random.randn(1)

plt.plot(x,y)
plt.show()
