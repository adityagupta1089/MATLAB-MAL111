function sol = row_reduced_echleon_form(A)
[r,c]=size(A);
j=1;
for i=1:r
    while abs(A(i,j))<1e-5 || j<=c
        % is it zero or j < columns
        imax=i;     %index of the element with maximum value
        max=A(i,j); %value of that element
        for k=i+1:r % finding the max
            if abs(A(k,j))>abs(max)
                max=A(k,j);
                imax=k;
            end
        end
        A([i,imax],:)=A([imax,i],:); %swap the rows
        if abs(A(i,j))<1e-5% is it zero
            j=j+1;
        end
    end
    A(i,:)=A(i,:)/A(i,j);
    % do for all remaining elements in current row
    for k=1:r
        if k~=i
            A(k,:)=A(k,:)-A(i,:)*A(k,j);
            A(k,j)=0; % make elements other than the pivot element in the current row zero
        end
    end
    j=j+1;
    if j>c
        break;
    end
end
sol=A;
end