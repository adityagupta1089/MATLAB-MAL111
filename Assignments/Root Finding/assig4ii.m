clc
clear all
 f=inline('sqrt(10/(4+x))');
 g=inline('0.5*sqrt(10-x^3)');
 h=inline('x-(x^3+4*x^2-10)/(3*x^2+8*x)');
 x=1.5;
 e=1e-5;
 n=0;
 while abs(f(x)-x)>=e
     n=n+1;
     x=f(x);
 end
 fprintf('Root is %f, found in %d iterations with sqrt(10/(4+x))\n',x,n);
 y=1.5;
 n2=0;
 while abs(g(y)-y)>=e
     n2=n2+1;
     y=g(x);
 end
 fprintf('Root is %f, found in %d iterations with 0.5*sqrt(10-x^3)\n',y,n2);
  z=1.5;
 n3=0;
 while abs(h(z)-z)>=e
     n3=n3+1;
     z=h(z);
 end
 fprintf('Root is %f, found in %d iterations with x-(x^3+4*x^2-10)/(3*x^2+8*x)\n',z,n3);
 
 