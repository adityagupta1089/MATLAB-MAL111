clc
clear all
f=inline('(x-1)*(x-1)*(x-1)+0.512');
g=inline('3*(x-1)*(x-1)');
x=1.5;
n=0;
while n<21
    n=n+1;
    x=x-f(x)/g(x);
    if n==10||n==20
        fprintf('After %d iterations, root is %f\n',n,x);
    end
end