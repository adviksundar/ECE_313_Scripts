import numpy as np
import matplotlib.pyplot as plt

t = np.linspace(0, 1, 1000)

y1 = np.cos(2 * np.pi * t)
y2 = np.real(np.exp(1j * 2 * np.pi * t))
y3 = 0.5 * (np.exp(1j * 2 * np.pi * t) + np.exp(-1j * 2 * np.pi * t))

plt.figure()

plt.subplot(3, 1, 1)
plt.plot(t, y1)
plt.title('Plotting X_1(t)')
plt.xlabel('t')
plt.ylabel('X_1(t)')

plt.subplot(3, 1, 2)
plt.plot(t, y2)
plt.title('Plotting X_2(t)')
plt.xlabel('t')
plt.ylabel('X_2(t)')

plt.subplot(3, 1, 3)
plt.plot(t, y3)
plt.title('Plotting X_3(t)')
plt.xlabel('t')
plt.ylabel('X_3(t)')

plt.suptitle('Plotting X(t) = cos(2\u03C0t) in 3 Different Ways')
plt.show()
