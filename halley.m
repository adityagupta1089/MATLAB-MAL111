clc
clear all
f=inline('3*x-exp(x)');
g=inline('3-exp(x)');
h=inline('-exp(x)');
x=1.5;
p=1e-20;
n=0;
while abs(f(x))>=p
    n=n+1;
    x=x-2*f(x)*g(x)/(2*(g(x)^2)-f(x)*h(x));
end
fprintf(['Root is %1.',num2str(-log(p)/log(10)),'f...\nfound in %d iterations\n'],x,n);