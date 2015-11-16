clc
clear all
n=6;
a=0;
b=2;
h=(b-a)/n;
I=0;
f=inline('2/(x*x+4)');
for i=1:n
    I=I+h*(f(a+(i-1)*h)+f(a+i*h))/2;
end
fprintf('Integration of function gives %f\n',I);
fprintf('Theoretical value is %f, error is %f%%\n',pi/4,100*abs(1-4*I/pi));