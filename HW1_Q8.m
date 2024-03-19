t = linspace(0, 1, 1000);

y1 = cos(2*pi*t);
y2 = real(exp(j*2*pi*t));
y3 = 0.5*(exp(j*2*pi*t) + exp(-j*2*pi*t));

figure;
subplot(3, 1, 1);
plot(t, y1);
title('Plotting X_1(t)');
xlabel('t');
ylabel('X_1(t)');

subplot(3, 1, 2);
plot(t, y2);
title('Plotting X_2(t)');
xlabel('t');
ylabel('X_2(t)');

subplot(3, 1, 3);
plot(t, y3);
title('Plotting X_3(t)');
xlabel('t');
ylabel('X_3(t)');

sgtitle('Plotting X(t) = cos(2\pit) in 3 Different Ways');