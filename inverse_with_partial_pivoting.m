clc
clear all
A=rand(4,4);
C=A;
disp('A is ');
disp(A);
[r,c]=size(A);
B=zeros(r,2*c);
for i=1:r
    for j=1:2*c
        if j<=c
            B(i,j)=A(i,j);
        else
            if j-c==i
                B(i,j)=1;
            end
        end
    end
end
A=B;
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
        A(j,i)=0;
    end
end
for i=r:-1:1
    if A(i,i)==0
        for k=i-1:-1:1
            if A(k,i)~=0
                A([i,k],:)=A([k,i],:);
            end
        end
    end
    A(i,:)=A(i,:)/A(i,i);    
    for j=i-1:-1:1
        A(j,:)=A(j,:)-A(i,:)*A(j,i)/A(i,i);
        A(j,i)=0;
    end
end
B=zeros(r,c);
L=zeros(r,c);
for i=1:r
    for j=c+1:2*c
        B(i,j-c)=A(i,j);
        L(i,j-c)=A(i,j-c);
    end
end
A=B;
disp('Inverse is');
disp(A);