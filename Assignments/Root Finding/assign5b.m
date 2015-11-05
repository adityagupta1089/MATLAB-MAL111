clc
clear all
f=inline('3*x*exp(x)');
g=inline('3*exp(x)*(1+x)');
x=1;
p=1e-4;
n=0;
while abs(f(x))>=p
    n=n+1;
    x=x-f(x)/g(x);
end
fprintf('Root is %f, found in %d iterations using Newton-Raphson Method\n',x,n);
clear all
f=inline('3*x*exp(x)');
a=0;
b=2;
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
p1=2;
f=inline('3*x*exp(x)');
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