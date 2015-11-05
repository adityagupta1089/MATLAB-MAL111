clc
clear all
g=inline('sqrt(x)');
x=[0.70 0.72 0.74 0.76 0.78 0.80 0.82 0.84 0.86 0.88];
y=[0.8423 0.8771 0.9131 0.9505 0.9893 1.0296 1.0717 1.1156 1.1616 1.2097];
n=numel(x);
h=0.1;
z=0.71;
delta =zeros(n+1);
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
for i=1:n
    y=1;
    for j=1:i
        y=y*(u-(j-1))/j;
    end    
    f=f+y*delta(i+1,i+1);
end
fprintf('f(%f) = %f\n',z,f);
fprintf('Error is %f\n',abs(f-0.859353));