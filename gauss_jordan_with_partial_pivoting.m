clc
clear all
A=[0 4 1 2;2 6 -2 3;4 8 -5 4];
[r,c]=size(A);
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
for i=1:r
disp(['x(',num2str(i),') = ',num2str(A(i,c))]);
end