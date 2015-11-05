clc
clear all

A=[0 4 1 2;2 6 -2 3;4 8 -5 4];
[r,c]=size(A);
X=zeros(1,r);

for i=1:r
    maxelement=A(i,i);
    maxcorri=i;
    for k=i+1:r
        if A(k,i)~=0 && abs(A(k,i))>abs(maxelement)
            maxelement=A(k,i);
            maxcorri=k;
        end
    end
    A([i,maxcorri],:)=A([maxcorri,i],:);
    for j=i+1:r
        A(j,:)=A(j,:)-A(i,:)*A(j,i)/A(i,i);
    end
end
for i=r:-1:1
    x=A(i,c);
    for j=r:-1:i+1
        x=x-A(i,j)*X(1,j);
    end
    X(1,i)=x/A(i,i);
end
for i=1:r
    disp(['x(',num2str(i),') = ',num2str(X(1,i))]);
end