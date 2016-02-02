function sol = gauss_jordan(A)
% A-> augmented matrix, i.e. A=[M|N] where Mx=N
% sample input : gauss_jordan([2 1 -1 8;-3 -1 2 -11;-2 1 2 -3])
% sample output:
%    2.0000
%    3.0000
%   -1.0000
[r,c]=size(A);
% sin -> whether the matrix is singular(sin=1) or non-singular(sin=0)
sin=0;
for i=1:r
    % finding the i-th pivot:
    % partial pivoting:
    if(i<r)% do partial pivoting only if there are any row below the current row
        imax=i;     %index of the element with maximum value
        max=A(i,i); %value of that element
        for k=i+1:r
            % finding the max
            if abs(A(k,i))>abs(max)
                max=A(k,i);
                imax=k;
            end
        end
        %swap the rows
        A([i,imax],:)=A([imax,i],:);
    end
    if A(i,i)==0
        % matrix is singular
        sin=1;
    end
    % do for all remaining elements in current row
    for j=i+1:r
        A(j,:)=A(j,:)-A(i,:)*A(j,i)/A(i,i);
        A(j,i)=0; % fill lower triangular matrix with zeros
    end
end
% if matrix is non-singular
if sin==0
    sol=zeros(r,1);
    % now making upper triangular matrix zero
    for i=r:-1:1
        if A(i,i)==0
            % infinite solutions 
            break;
        end
        A(i,:)=A(i,:)/A(i,i);% making identity matrix
        for j=i-1:-1:1
            % empty upper triangular matrix
            A(j,:)=A(j,:)-A(i,:)*A(j,i)/A(i,i);
        end
    end
    for i=1:r
        % save values of solution
        sol(i,1)=A(i,c);
    end
else
    disp('Matrix is singular.');
end
end