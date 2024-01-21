%Plot the sinusoidal signal with different values of 
% sampling periods
%period (p)=1/f

clear all;
close all;
n= linspace(0,1,1000)

f=30;
x=sin(2*pi*f*n);
subplot(3,1,1);
plot(n,x);
xlabel('Time')
ylabel('Amplitude');
title('sinewave with period 0.033 sec');


subplot(3,1,2)
f=20
x=sin(2*pi*f*n);
plot(n,x,'g')
xlabel('Time')
ylabel('Amplitude')
title('sine wave with period 0.05 sec')


subplot(3,1,3);% 3 row, 1 column and last is the fig numbering
f=10;
x=sin(2*pi*f*n);
plot(n,x,'r');
xlabel('Time')
ylabel('Amplitude')
title('Sine wave with period 0.1 sec');

