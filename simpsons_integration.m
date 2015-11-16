clc
clear all
a=0;
b=2;
n=12;
h=(b-a)/n;
f=inline('2/(x*x+4)');
I=0;
for i=1:n/2
    I=I+(1/3)*h*(f(a+(2*i-2)*h)+4*f(a+(2*i-1)*h)+f(a+2*i*h));
end
fprintf('Integration of function gives %f\n',I);
fprintf('Theoretical value is %f, error is %f%%\n',pi/4,100*abs(1-4*I/pi));