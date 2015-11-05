clc
clear all
x=[0 0.1 0.3 0.6 1.0];
y=[-6 -5.89483 -5.65014 -5.17788 -4.28172];
n=numel(x);
F=zeros(n);
z=0.85;
for i=1:n
    F(1,i)=y(i);
end
for i=2:n
    for j=2:i
        F(i,j)=(F(j-1,i)-F(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
f=0;
for i=1:n
    y=1;
    for j=1:i
        y=y*(z-x(i));
    end
    f=f+y*F(i,i);
end
fprintf('f(%f)=%f\n',z,f);

        