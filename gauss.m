function sol = gauss(A)
% A-> augmented matrix, i.e. A=[M|N] where Mx=N
% sample input : gauss([2 1 -1 8;-3 -1 2 -11;-2 1 2 -3])
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
    sol=zeros(r,1);% solution array
    % backward susbstitution
    for i=r:-1:1
        s=A(i,c);% s-> it will become the value of x(i)
        for j=r:-1:i+1
            s=s-A(i,j)*sol(j,1);% this value needs to be removed from s
        end
        sol(i,1)=s/A(i,i);% divide by coeff of x(i)
    end
else
    disp('Matrix is Singular.');
end
end