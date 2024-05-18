% HW 11 Question 1c:
clear
close all
clc

om = linspace(-30, 30, 1000);
H = (1 ./ ((exp(1j*om)).^2 + 1.5));

figure(1);
plot(om, abs(H), 'b');
xlabel('Frequency (Hz)');
ylabel('|H(jw)|');

figure(2);
plot(om, (180/pi)*angle(H), 'r');
xlabel('Frequency (Hz)');
ylabel('<H(jw)');
