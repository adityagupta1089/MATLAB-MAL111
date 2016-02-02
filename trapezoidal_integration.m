function val = trapezoidal_integration(f,a,b,n)
% sample input : trapezoidal_integration(inline('2/(x*x+4)'),0,2,12)
% sample output: 0.7851
% f->function
% a->initial point
% b->final point
% n->number of divisions
h=(b-a)/n;
I=0;
for i=1:n
    % As we know int from a to b of f(x) dx
    % is approximately equal to (by trapezoidal rule)
    % (h/2)*sum of [f(x(i1)+f(x(i-1))] from 1 to (n)
    % where x(i)=a+i*h
    I=I+h*(f(a+(i-1)*h)+f(a+i*h))/2;
end
val=I;
end