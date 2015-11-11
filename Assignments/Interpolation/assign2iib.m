clc
clear all
g=inline('sqrt(x)');
x=[0 0.2 0.4 0.6 0.8 1.0 1.2 1.4 1.6 1.8];
y=[1 1.2214 1.4918 1.8221 2.2255 2.7177 3.3166 4.0426 4.9185 5.9694];
n=numel(x);
h=x(2)-x(1);
z=1.75;
delta =zeros(n);
u=(z-x(1))/h;
for i=1:n
    delta(1,i)=y(i);
end
for i=2:n
    for j=i:n
        delta(i,j)=delta(i-1,j)-delta(i-1,j-1);
    end
end
f=g(x(1));
for i=1:n-1
    y=1;
    for j=1:i
        y=y*(u-(j-1))/j;
    end    
    f=f+y*delta(i+1,i+1);
end
fprintf('f(%f) = %f\n',z,f);