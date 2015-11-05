clc
clear all
p0=0.1;
p1=0.5;
f=inline('3*exp(x)-4*cos(x)');
ep=1e-4;
p=0;
n=0;
while abs(f(p))>=ep
    n=n+1;
    p=p1-f(p1)*(p1-p0)/(f(p1)-f(p0));
    p0=p1;
    p1=p;
end
fprintf('Secant Method gives %f, found in %d iterations\n',p,n);
clear all
f=inline('3*exp(x)-4*cos(x)');
a=0;
b=1;
p=1e-4;
n=0;
c=0;
while abs(f(c))>=p
    n=n+1;    
    c=b-f(b)*(b-a)/(f(b)-f(a));
    if f(a)*f(c)<0
        b=c;
    elseif f(c)*f(b)<0
        a=c;
    end
end
fprintf(['Regula Falsi gives %f, found in %d iterations\n'],c,n);