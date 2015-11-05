clc
clear all
f=inline('3*x-exp(x)');
a=1;
b=2;
p=1e-10;
n=0;
while abs(a-b)/abs(a)>=p
    n=n+1;    
    c=(a+b)/2; 
    if f(a)*f(c)<0
        b=c;
    elseif f(c)*f(b)<0
        a=c;
    end

end
c=(a+b)/2;
fprintf(['Root is %1.',num2str(-log(p)/log(10)),'f, found in %d iterations\n'],c,n);