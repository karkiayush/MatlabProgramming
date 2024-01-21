%Write a program that generates a normally distributed random signal of length 100 samples.
clear all;
close all;
t=linspace(0,1,100);
y=randn(1,100);
plot(t,y,t,y,'o');
xlabel('Time');
ylabel('Amplitude');
title('Normally distributed random signal');

