import numpy as np
import matplotlib.pyplot as plt

omega = np.linspace(-20, 20, 1000)

alpha = 1
omega_0 = 10

F_omega = (alpha + omega * 1j) / ((alpha + omega * 1j) ** 2 + omega_0 ** 2)

plt.figure()

plt.subplot(3, 1, 1)
plt.plot(omega, np.abs(F_omega))
plt.title('Magnitude of F(\u03C9)')
plt.xlabel('\u03C9')
plt.ylabel('|F(\u03C9)|')

plt.subplot(3, 1, 2)
plt.plot(omega, np.angle(F_omega))
plt.title('Phase of F(\u03C9)')
plt.xlabel('\u03C9')
plt.ylabel('Phase (rad)')

plt.subplots_adjust(hspace=1)

plt.suptitle('Plotting F(\u03C9) when \u03B1 = 1 and \u03C9\u2080 = 10')
plt.show()
