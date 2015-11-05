clc
clear all
f=inline('x*x*x+3*x*x-1');
a=-3;
b=-2;
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
fprintf(['Root is %1.',num2str(-log(p)/log(10)+1),'f..., found in %d iterations\n'],c,n);