clc
clear all
p0=0.9;
p1=1;
f=inline('1-10^x+25*x^2');
ep=1e-4;
n=0;
p=(p0+p1)/2;
while abs(f(p))>=ep||n==0
    n=n+1;
    p=p1-f(p1)*(p1-p0)/(f(p1)-f(p0));
    p0=p1;
    p1=p;
end
fprintf('Secant Method gives %f, found in %d iterations\n',p,n);
clear all
f=inline('1-10^x+25*x^2');
a=0.9;
b=1;
p=1e-4;
n=0;
c=(a+b)/2;
while abs(f(c))>=p||n==0
    n=n+1;    
    c=b-f(b)*(b-a)/(f(b)-f(a));
    if f(a)*f(c)<0
        b=c;
    elseif f(c)*f(b)<0
        a=c;
    else
        b=c;
    end
end
fprintf('Regula Falsi gives %f, found in %d iterations\n',c,n);