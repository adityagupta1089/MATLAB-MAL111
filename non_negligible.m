function non_negligible( A,tol )
[r,c]=size(A);
for i=1:r
    for j=1:c
        if abs(A(i,j))<tol
            A(i,j)=0;
        end
    end
end
end

