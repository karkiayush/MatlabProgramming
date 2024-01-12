% Plotting the exponential signal
a=input("Enter the value of a: ");
c=input("Enter the value of b: ");

t=linspace(-10,10,1000);
x1=c*exp(a*t);
x2=c*exp(a*a*t);

subplot(2,1,1)
plot(t,x1)
xlabel('Time')
ylabel('Amplitude')
title('Exponential Signal')

subplot(2,1,2)
plot(t,x2)
xlabel('Time')
ylabel('Amplitude')
title('Exponential Signal')

