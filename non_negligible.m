function A=non_negligible( A,tol )
% reduces very small terms to zero.
[r,c]=size(A);
for i=1:r
    for j=1:c
        if abs(A(i,j))<tol
            A(i,j)=0;
        end
    end
end
end

