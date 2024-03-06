% Matlab Question 1a
clear
clc
close all
t=linspace(-4,4,1e4);

% 10 Term
N = 10;
%compute complex amplitudes
for n=1:N
    X(n)=(2-exp(-2*pi*j*n/3)-exp(-4*pi*j*n/3))/(2*pi*j*n);
end

for n=1:N
    x(n,:)=2*real(X(n)*exp(j*2*n*t));
end

xcomb=ones(size(t))+sum(x);
figure(1);
hold on;
plot(t,xcomb,'r');
xlabel('n');
ylabel('X(n)');
title('Fourier Series Approximations');

% 50 Term
N = 50;
%compute complex amplitudes
for n=1:N
    X(n)=(2-exp(-2*pi*j*n/3)-exp(-4*pi*j*n/3))/(2*pi*j*n);
end

for n=1:N
    x(n,:)=2*real(X(n)*exp(j*2*n*t));
end

xcomb=ones(size(t))+sum(x);
plot(t,xcomb,'b');

grid on;
hold on;



% Matlab Question 2
clear
clc
close all
t=linspace(-4,4,1e4);

% 10 Term
N = 10;
%compute complex amplitudes
for n=1:N
    X(n)=-9*((exp(-2*pi*j*n/3)-1)/(4*pi^2*n^2));
end

for n=1:N
    x(n,:)=2*real(X(n)*exp(j*2*n*t));
end

xcomb=ones(size(t))+sum(x);
figure(2);
hold on;
plot(t,xcomb,'r');
xlabel('n');
ylabel('X(n)');
title('Fourier Series Approximation 10 Term');
grid on;

% 50 Term
N = 50;
%compute complex amplitudes
for n=1:N
    X(n)=-9*((exp(-2*pi*j*n/3)-1)/(4*pi^2*n^2));
end

for n=1:N
    x(n,:)=2*real(X(n)*exp(j*2*n*t));
end

xcomb=ones(size(t))+sum(x);
figure(3);
hold on;
plot(t,xcomb,'b');
xlabel('n');
ylabel('X(n)');
title('Fourier Series Approximation 50 Term');
grid on;



% Matlab Question 3a
clear
clc
close all
t=linspace(-4,4,1e4);

% 10 Term
N = 10;
%compute complex amplitudes
for n=1:N
    X(n)=0.504/(1+4*n*j);
end

for n=1:N
    x(n,:)=2*real(X(n)*exp(j*2*n*t));
end

xcomb=0.504*ones(size(t))+sum(x);
figure(4);
hold on;
plot(t,xcomb,'r');
xlabel('n');
ylabel('X(n)');
title('Fourier Series Approximations');

% 50 Term
N = 50;
%compute complex amplitudes
for n=1:N
    X(n)=0.504/(1+4*n*j);
end

for n=1:N
    x(n,:)=2*real(X(n)*exp(j*2*n*t));
end

xcomb=0.504*ones(size(t))+sum(x);
plot(t,xcomb,'g');
grid on;
hold on;



% Matlab Question 3b
clear
close all
t=linspace(-10,10,1e4);
N=10;
for n=1:N
    X(n)=0.504/(1+4*n*j);
end
for n=1:N
    x(n,:)=2*real(X(n)*exp(j*n*t));
end
xcomb=0.504*ones(size(t))+sum(x);
figure(5);
plot(t,xcomb); 
grid on;
figure(6);
stem(abs(X));
grid on;
xlabel('n');
ylabel('Amplitude');
title('Single-sided Amplitude Spectrum');



% Matlab Question 3c
clear
close all
t=linspace(-10,10,1e4);
N=10;
for n=1:N
    X(n)=0.504/(1+4*n*j);
end
for n=1:N
    x(n,:)=2*real(X(n)*exp(j*n*t));
end
xcomb=0.504*ones(size(t))+sum(x);
figure(7);
plot(t,xcomb); 
grid on;
figure(8);
stem(angle(X));
grid on;
xlabel('n');
ylabel('Phase');
title('Single-sided Phase Spectrum');









