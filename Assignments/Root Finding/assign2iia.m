clc
clear all
f=inline('x*x-2*x*exp(-x)+exp(-2*x)');
g=inline('2*x+2*x*exp(-x)-2*exp(-x)-2*exp(-2*x)');
x=0.5;
p=1e-10;
while abs(f(x))>=p
    x=x-f(x)/g(x);
end
fprintf(['Root is %1.',num2str(-log(p)/log(10)),'f...\n'],x);