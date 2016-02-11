function sol = row_reduced_echleon_form(A)
[r,c]=size(A);
j=1;
max=A(1,1);
min=A(1,1);
for ii=1:r
    for jj=1:c
        if abs(A(ii,j))>abs(max) &&A(ii,jj)~=0
            max=A(ii,jj);
        end
        if abs(A(ii,jj))<abs(min) && A(ii,jj)~=0
            min=A(ii,jj);
        end
    end
end
if min==0&&max==0
    sol=A;
    return;
end
tol=abs(min)/abs(100*max);
% The minimum entry after row reduced echleon form should be less than min/max
for i=1:r
    while abs(A(i,j))<tol
        % is it zero or j < columns
        imax=i;     %index of the element with maximum value
        maxe=A(i,j); %value of that element
        for k=i+1:r % finding the max
            if abs(A(k,j))>abs(maxe)
                maxe=A(k,j);
                imax=k;
            end
        end
        if abs(maxe)<tol% is it zero
            j=j+1;
        else
            A([i,imax],:)=A([imax,i],:); %swap the rows
        end
        if j>c
            sol=non_negligible(A,tol);
            return;
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
sol=non_negligible(A,tol);
end