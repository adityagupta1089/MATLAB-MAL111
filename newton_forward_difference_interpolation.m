clc
clear all
g=inline('sqrt(x)');
x0=3.85;
n=6;
h=0.1;
z=4;
delta =zeros(n+1);
u=(z-x0)/h;
for i=1:n+1
    delta(1,i)=g(x0+(i-1)*h);
end
for i=2:n+1
    for j=1:n-i+2
        delta(i,j)=delta(i-1,j+1)-delta(i-1,j);
    end
end
f=g(x0);
for i=1:n
    y=1;
    for j=1:i
        y=y*(u-(j-1))/j;
    end    
    f=f+y*delta(i+1,1);
end
fprintf('f(%f) = %f\n',z,f);