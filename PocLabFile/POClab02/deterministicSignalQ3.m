%Generate a sine wave of frequency 60 Hz, sample it 
% and then quantize it. Also, study
%the behavior of aliasing due to under 
% sampling

clear all;
close all;

n=linspace(0,1,60);
f=60;
x=5*sin(2*pi*f*n)

subplot(4,1,1);
plot(n,x);
xlabel('Time');
ylabel('Amplitude');
title('Sine Wave');
grid;


subplot(4,1,2);
stem(n,n>=0);
xlabel('Time');
ylabel('Amplitude');
title('Imulse trains');
grid;


subplot(4,1,3);
stem(n,x);
xlabel('Time');
ylabel('Amplitude');
title('Sampled Signal');
grid;


x=round(x);
subplot(4,1,4);
stem(n,x);
xlabel('Time');
ylabel('Amplitude');
title('Quantised Signal');
grid


%Study the behavior of aliasing due to under sampling
close all
clear all
n=linspace(0,1,8);
f=8;
x=5*sin(2*pi*f*n);
plot(n,x);
xlabel('Time');
ylabel('Amplitude');
title('Effect of under sampling');
grid;