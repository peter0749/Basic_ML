import numpy as np
import matplotlib.pyplot as plt

def huber_loss(x, d):
    x_abs = np.abs(x)
    loss = np.where(x_abs<=d, 0.5*x**2, 0.5*d**2+d*(x_abs-d))
    return loss

plt.figure(figsize=(6, 4.5), facecolor='w', edgecolor='k')
x = np.linspace(-50, 50, 1000)
plt.plot(x, x**2/2, label='squared loss', lw=2, color='green')
for d in (1, 3, 5, 7, 10, 15, 20):
    plt.plot(x, huber_loss(x, d), label=r'huber loss: $\delta$={}'.format(d), lw=2)

plt.legend(loc='best', frameon=False)
plt.xlabel('error')
plt.ylabel('loss')
plt.show()

