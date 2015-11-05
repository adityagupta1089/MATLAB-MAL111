clc
clear all
f=inline('x+1-2*sin(pi*x)');
g=inline('1-2*pi*cos(pi*x)');
x=0.25;
p=1e-4;
n=0;
while abs(f(x))>=p
    n=n+1;
    x=x-f(x)/g(x);
end
fprintf('Root is %f, found in %d iterations using Newton-Raphson Method\n',x,n);
clear all
f=inline('x+1-2*sin(pi*x)');
a=0;
b=0.5;
p=1e-4;
n=0;
c=0.25;
while abs(f(c))>=p
    n=n+1;    
    c=b-f(b)*(b-a)/(f(b)-f(a));
    if f(a)*f(c)<0
        b=c;
    elseif f(c)*f(b)<0
        a=c;
    end
end
fprintf('Root is %f, found in %d iterations using Regula-Falsi Method\n',c,n);
clear all
p0=0;
p1=0.5;
f=inline('x+1-2*sin(pi*x)');
ep=1e-4;
p=0;
n=0;
while abs(f(p))>=ep
    n=n+1;
    p=p1-f(p1)*(p1-p0)/(f(p1)-f(p0));
    p0=p1;
    p1=p;
end
fprintf('Root is %f, found in %d iterations using Secant Method\n',p,n);