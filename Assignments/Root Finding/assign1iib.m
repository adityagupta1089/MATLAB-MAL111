clc
clear all
f=inline('(x-2)*(x-2)-log(x)');
a=exp(1);
b=4;
p=1e-4;
n=0;
c=exp(1);
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