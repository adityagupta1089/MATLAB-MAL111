%% MAL 111 MATLAb Lab
% August 13, 2015
% This program finds the 2^A,
% for a given matrix A
clc % clear the screen
clear all
% Enter the matrix A
A=[1 4 -1 2; 0 1 3 4; 5 -1 2 4; 6 2 0 -1];
[row, col] = size(A); % give the size of the matrix A
% generating the matrix B
B=ones(row, col);
for i = 1:row
    for j=1:col
        B(i,j)=1/(2^A(i,j));
    end
end

%% show both matrices A and B
disp ([' The first matis is A = ',mat2str(A)]);

disp ([' The first matis is B = ',mat2str(B)]);