clc
clear all
x1=rand(3);
x2=rand(7);
n1=numel(x1);
n2=numel(x2);
y1=zeros(size(x1));
y2=zeros(size(x2));
g=inline('sin(pi*x)');
for i=1:n1
    y1(i)=g(x1(i));   
end
for i=1:n2
    y2(i)=g(x2(i));
end
z=1/4;
f1=0;
f2=0;
for i=1:n1
    p1=y1(i);
    for j=1:n1       
        if(j~=i)
            p1=p1*(z-x1(j))/(x1(i)-x1(j));
        end
    end
     f1=f1+p1;
end
for i=1:n2
    p2=y2(i);
    for j=1:n2      
        if(j~=i)
            p2=p2*(z-x2(j))/(x2(i)-x2(j));
        end
    end
     f2=f2+p2;
end
fprintf('Degree 2 interpolation : f(%f) = %f, absolute error is %f\n',z,f1,abs(f1-g(1/4)));
fprintf('Degree 6 interpolation : f(%f) = %f, absolute error is %f\n',z,f2,abs(f2-g(1/4)));
            
