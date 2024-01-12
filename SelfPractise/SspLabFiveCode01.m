                        % MATRICES & VECTORS 
clc,clearvars %Everytime we run the program, we firsly clear the command window and 
% workspace


x=1:10; %x is vector(1d array with 10 columns) storing value from 1 to 10
% x'; %gives the vertical array. It is the transpose of the 1d array(1*10)
x=x'; %the vertical array is stored again to same arrray.

%linspace is method that provides 100 values from specific range if no info
%about number of value needed is provided. 
y=linspace(1,500,13); 
% y

values=[1 10 100];
commaSeperatedValues=[1,12,22];
% commaSeperatedValues
% values


% NOTE THAT MATRIX IS 2D ARRAY. SO ALL MATRIX IS MULTIDIMENSIONAL ARRAY BUT
% ALL MULTIDIMENSIONAL ARRAY IS NOT MATRIX.
% Creating matrix 2*2
mat1=[1,3 5;4,5,6];
% mat1

mulMat=[11 22 33;44 55 66;77 88 99];
% mulMat

% mat1*mat1 ;
%Remeber for the matrix multiplication the number of row of one matrix 
% must be equal to number of column of another matrix. 
% mat1*mat1' is possible since the no of row of mat1 equal to number of
% column of transpose of mat1

% <--------ARRAY OF SAME ELEMENTS--------->
m1=ones(3); %3*3  matrix of all element as 1
% m1

m2=ones(3,4); %3 row 4 cols
% m2

m0=zeros(5); %5*5 matrix with 0 as all elements

% <-------IDENTITY MATRIX-------------->
mI=eye(4,4,"double");%row,cols,datatype
% mI


m4=1:100; %starts at 1, ends at 10 and jump at gap of 3
m4

% <--------ACCESSING PARTICULAR ELEMENT OF ARRAY-------->
m5=[1 2 3; 4 5 6];
m5(2,1) %index start from 1 here 
% unlike prograaming where it starts from 0

m5(end)%end is the last col of last row 
% so it can be used as index


m6=1:5:1000;
% m6
m6(end-10) %index value = last index-10
m6(end)-10 %#ok<*NOPTS> %output = value at last index -10



% Getting entire row 
m5(2,:) %2nd row
m5(1,2:end)%1st row's, 1st and 2nd col



