clc
clear all
A=[0 4 1 2;2 6 -2 3;4 8 -5 4];
[r,c]=size(A);
sin=0;
for i=1:r
    if A(i,i)==0
        for k=i+1:r
            if A(k,i)~=0
                A([i,k],:)=A([k,i],:);
            end
        end
    end
    if A(i,i)==0
        sin=1;
    end
    for j=i+1:r
        A(j,:)=A(j,:)-A(i,:)*A(j,i)/A(i,i);
    end
end
if sin==0
B=zeros(1,r);
for i=r:-1:1
    s=A(i,c);
    for j=r:-1:i+1
            s=s-A(i,j)*B(1,j);
    end    
    B(1,i)=s/A(i,i);
end
for i=1:r
    disp(['x(',num2str(i),') = ',num2str(B(1,i))]);
end
end
if isequal(A(r,:),zeros(1,c)) ==1
    disp('Infinite solutions');
else
    disp('No solutions');
end