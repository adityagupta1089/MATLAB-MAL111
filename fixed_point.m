clc
clear all
 f=inline('sqrt(10/(4+x))');
 x=1.5;
 e=1e-17;
 n=0;
 while abs(f(x)-x)>=e
     n=n+1;
     x=f(x);
 end
 fprintf(['Root is %1.',num2str(-log(e)/log(10)),'f..., found in %d iterations.\n'],x,n);
 