clc
clear all
A=[2 4 3;1 0 8;2 3 7];
disp(['A is ',mat2str(A)]);
A(2,:)=3*A(2,:);
disp(['R2 -> 3R2 is ',mat2str(A)]);