function root = newton_raphson(f,g,x,p)
%sample input : newton_raphson(inline('x-tan(x)'),inline('1-(sec(x))^2'),1.5,1e-10)
%sample output: 5.5719e-04
%f-> function
%g->differentiated function
%x->initial root
%p-.precision
% while value of f(x)-f(a) is greater than precision we will loop
% where a is the root so f(a)=0 hence we take abs(f(x))
while abs(f(x))>=p
    %using x(n)=x(n-1)-f(x(n-1))/f'(x(n-1))
    x=x-f(x)/g(x);
end
root =x;
end