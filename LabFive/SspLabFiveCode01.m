% Circular convolution: In this lab work we gonna perform circular
% convolution
x1=input("Enter the first sequence: ");
x2=input("Enter the second sequence: ");

l1=length(x1);
l2=length(x2);

n1=max(l1,l2);
l=l1-l2;

if l>=0
    x2=[x2,zeros(1,l)];

else 
    x1=[x1,zeros(1,-l)];
end

for n=1:n1
    y(n)=0;

    for i=1:n1
        j=n-i+1;
        if j<=0
            j=n1+j;
        end
        y(n)=[y(n)+x1(i)*x2(j)];
    end
    n=0:n1-1;
end

disp("The circular convolution is as follows")
disp(y);

figure;
subplot(3,1,1)
stem(n,x1);

figure;
subplot(3,1,2)
stem(n,x2);

figure;
subplot(3,1,3)
stem(y);





% SspLab05Code01
% Enter the first sequence: 
% [1 2 3 4]
% Enter the second sequence: 
% [4 5 6 7 8]
%     65    65    60    50    60


