% HW 10 Question 3d:
clear
close all
clc

om = linspace(-30, 30, 1000);
H = ((1j*om).^2 + (2*(1j*om)) - 3) ./ (((1j*om) + 1) .* ((1j*om).^2 - (2*(1j*om)) + 5));

figure(1);
plot(om, abs(H), 'b');
xlabel('Frequency (Hz)');
ylabel('|H(jw)|');

figure(2);
plot(om, (180/pi)*angle(H), 'r');
xlabel('Frequency (Hz)');
ylabel('<H(jw)');


% HW 10 Question 4a
clear
close all
clc

om = linspace(-30, 30, 1000);
H = (((1j*om) + 9j) .* ((1j*om) - 9j)) ./ ((1j*om) + 3);

figure(1);
plot(om, abs(H), 'b');
xlabel('Frequency (Hz)');
ylabel('|H(jw)|');

figure(2);
plot(om, (180/pi)*angle(H), 'r');
xlabel('Frequency (Hz)');
ylabel('<H(jw)');


% HW 10 Question 4b
clear
close all
clc

om = linspace(-30, 30, 1000);
H = ((1j*om) + 1) ./ ((1j*om) + 3);

figure(1);
plot(om, abs(H), 'b');
xlabel('Frequency (Hz)');
ylabel('|H(jw)|');

figure(2);
plot(om, (180/pi)*angle(H), 'r');
xlabel('Frequency (Hz)');
ylabel('<H(jw)');

