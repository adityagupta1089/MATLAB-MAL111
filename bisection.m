function root = bisection(f,a,b,T,N)
% sample input : bisection(inline('3*x-exp(x)'),1,2,1e-10,100)
% sample output: 1.5121

% a-> lower bound
%b-> upper bound
%T-> error tolerance
%N-> maximum iterations
%n-> iteration count
n=0;
while n<=N %prevent infinite loops
    c=(a+b)/2;%new midpoint
    if f(c)==0||(b-a)/2<T % solution found
        root=c;
        break;
    end
    n=n+1;
    % new interval
    if f(a)*f(c)<0
        b=c;
    elseif f(c)*f(b)<0
        a=c;
    end
    n=n+1;%increment n
end