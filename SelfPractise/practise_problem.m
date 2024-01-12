clc, clearvars, close all

% A) What is the maximum value of the following equation on the
% range 0 <x < 5
% y =-(x-3)^2 +10
% B) What is the minimum of the function?
% C) At what x-value does the maximum -value occur?
% D) What is y(20.7)?

% A soln : 
x=linspace(0,5) %gives 100 values which are 
% equally apart from 0 - 5

% y=-(x-3)^2; here if we do this matlab 
% then, matlab think it is multiplication
% between matrix, which is not true,

% since we only need the square of each element so 
% we use the . in between () and ^ sign 
y=(-(x-3).^2)+10;
message1="y values: ";
% message1
% y

plot(x,y,'.')
max(y)

%B Ans: 
min(y)

% C Ans: 
[maxmVal,I]=max(y)

