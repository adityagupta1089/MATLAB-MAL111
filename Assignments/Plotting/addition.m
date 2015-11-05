clc
clear all
A=[2 4 3;1 0 8;2 3 7];
disp('A is');
disp(A);
disp('R2 -> R2 + 4R3 is');
A(2,:)=A(2,:)+4*A(3,:);
disp(A);