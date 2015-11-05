clc
clear all
x=[2 2.75 4];
n=numel(x);
y=zeros(size(x));
g=inline('1/x');
for i=1:n
    y(i)=g(x(i));
end
z=3;
f=0;
for i=1:n
    p=y(i);
    for j=1:n        
        if(j~=i)
            p=p*(z-x(j))/(x(i)-x(j));
        end
    end
     f=f+p;
end
fprintf('f(%f) = %f\n',z,f);
            
