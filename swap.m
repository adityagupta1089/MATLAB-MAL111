clr
A=[2 4 3;1 0 8;2 3 7];
disp('A is');
disp(A);
A([1,2],:)=A([2,1],:);
disp('Swapped A is');
disp(A);