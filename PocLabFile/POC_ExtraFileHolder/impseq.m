% Generate a unit impulse function using a 
% user defined function 

function[d]=impseq(n1,n2,k)
n=n1:n2;
d=((n-k)==0);
subplot(2,1,1);
stem(n,d);
xlabel('Discrete Time');
ylabel('Unit Impulse Function');
title('Unit Impulse Function');
subplot(2,1,2);
b=n1:0.001:n2;
d=((b-k)==0);
plot(b,d,'-g');
xlabel('continuous Time');
ylabel('Amplitude' );
title('Unit Impulse Function');
