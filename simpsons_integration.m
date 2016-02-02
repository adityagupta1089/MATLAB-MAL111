function val = simpsons_integration(f,a,b,n)
% sample input : simpsons_integration(inline('2/(x*x+4)'),0,2,12)
% sample output: 0.7854
% f->function
% a->initial point
% b->final point
% n->number of divisions
h=(b-a)/n;
I=0;
% As we know int from a to b of f(x) dx
% is approximately equal to (by simpson's 1/3rd rule)
% (h/3)*sum of [f(x(2j-2)+4f(x(2j-1)+f(x(2j))))] from 1 to (n/2)
for i=1:n/2
    I=I+(1/3)*h*(f(a+(2*i-2)*h)+4*f(a+(2*i-1)*h)+f(a+2*i*h));
end
val=I;
end