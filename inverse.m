function mat = inverse(A)
% sample input : inverse([3 2 -5;1 -3 2;5 -1 4]) 
% sample output:
%     0.1136    0.0341    0.1250
%    -0.0682   -0.4205    0.1250
%    -0.1591   -0.1477    0.1250
% identity matrix
I= eye(size(A));
% the matrix [A|I]
[r,c]=size(A);
A=[A I];
for i=1:r
    % partial pivoting
    % maximum element and corresponding i
    maxelement=A(i,i);
    maxcorri=i;
    % looping
    for k=i+1:r
        if abs(A(k,i))>abs(maxelement)
            maxelement=A(k,i);
            maxcorri=k;
        end
    end
    % matrix is singular
    if(maxelement==0)
        disp('Matrix is Singular');
        return;
    end
    % swapping the rows : partial pivoting
    A([i,maxcorri],:)=A([maxcorri,i],:);
    for j=i+1:r
        % creating lower triangular entries zero
        A(j,:)=A(j,:)-A(i,:)*A(j,i)/A(i,i);
        A(j,i)=0;
    end
end
for i=r:-1:1
    if A(i,i)==0
        % matrix is singular
        disp('Matrix is Singular');
        return;
    end
    % converting to entry of 1
    A(i,:)=A(i,:)/A(i,i);    
    for j=i-1:-1:1
        % making elements of upper triangular matrix zero
        A(j,:)=A(j,:)-A(i,:)*A(j,i)/A(i,i);
        A(j,i)=0;
    end
end
% now matrix has become [I|A], so we take the right side.
mat=A(:,[c+1:2*c]);
end