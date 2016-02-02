function root = regula_falsi(f,a,b,p,N)
% sample input : regula_falsi(inline('3*x+sin(x)-exp(x)'),0,1,1e-15,500)
% sample output: 0.3604
% a->first point
% b->second point
% p->precision
% N-> max terations
n=0;% number of iterations
c=0;% next point in iteration

while n<=N
    n=n+1;%increase iteration count
    % while value of f(c)-f(a) is greater than precision we will loop
    % where a is the root so f(a)=0 hence we take abs(f(c))
    if f(c)==0||abs(f(c))<=p% solution found
        root=c;
        break;
    end
    % as we know  c_k = b_k - f(b_k)((b_k-a_k))/(f(b_k)-f(a_k))
    c=b-f(b)*(b-a)/(f(b)-f(a));
    % new interval
    if f(a)*f(c)<0
        b=c;
    elseif f(c)*f(b)<0
        a=c;
    end
end
root=c;
end