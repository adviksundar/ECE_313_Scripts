% Matlab Question 1a
clear
clc
close all
t=linspace(-4,4,1e4);

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
grid on;

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
grid on;



% Matlab Question 3a
clear
clc
close all
t=linspace(-4,4,1e4);

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
xlabel('time (secs)');
figure(6);
stem(abs(X));



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
xlabel('time (secs)');
figure(8);
stem(angle(X));









