clc
clear all
f=inline('x-tan(x)');
g=inline('1-(sec(x))^2');
x=1.5;
p=1e-10;
while abs(f(x))>=p
    x=x-f(x)/g(x);
end
fprintf(['Root is %1.',num2str(-log(p)/log(10)),'f...\n'],x);