%Write a program to generate noisy sinusoidal wave.
clear all;
close all;
t=linspace(0,1,100);
noisey=randn(1,100);

f=1;
A=10;
siny=A*sin(2*pi*f*t);%here t is different for each instant
noisysine=siny+noisey

plot(t,noisysine)
xlabel('Time')
ylabel('Amplitude')
title('Noisy Sinusoidal Wave')