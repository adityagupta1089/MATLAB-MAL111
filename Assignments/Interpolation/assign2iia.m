clc
clear all
x=[0 0.2 0.4 0.6 0.8 1.0 1.2 1.4 1.6 1.8];
y=[1 1.2214 1.4918 1.8221 2.2255 2.7177 3.3166 4.0426 4.9185 5.9694];
n=numel(x);
h=x(2)-x(1);
z=0.05;
delta =zeros(n+1);
u=(z-x(1))/h;
for i=1:n
    delta(1,i)=y(i);
end
for i=2:n
    for j=1:n-i+1
        delta(i,j)=delta(i-1,j+1)-delta(i-1,j);
    end
end
f=y(1);
for i=1:n
    y=1;
    for j=1:i
        y=y*(u-(j-1))/j;
    end    
    f=f+y*delta(i+1,1);
end
fprintf('f(%f) = %f\n',z,f);