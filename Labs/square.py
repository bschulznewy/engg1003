import numpy as np
import matplotlib.pyplot as plt

x = np.zeros([10,10])

x[3, 2:6] = 1
x[6, 2:6] = 1
x[3:6, 2] = 1
x[3:6, 5] = 1

plt.imshow(x, cmap="gray")
plt.savefig("square.png")
plt.show()
