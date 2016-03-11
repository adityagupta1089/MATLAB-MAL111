function sol = gauss_jordan(A)
% A-> augmented matrix, i.e. A=[M|N] where Mx=N
% sample input : gauss_jordan([2 1 -1 8;-3 -1 2 -11;-2 1 2 -3])
% sample output:
%    2.0000
%    3.0000
%   -1.0000
[r,c]=size(A);
A=row_reduced_echleon_form(A);
sol=A(:,c); % save values of solution
end