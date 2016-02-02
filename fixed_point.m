function root = fixed_point(f,x,T,N)
% sample input : fixed_point(inline('sqrt(10/(4+x))'),1.5,1e-17,100)
% sample output: 1.3652

% f -> iterative function, e.g. for x^3+4x^2-10, x=sqrt(10/(4+x))
% x -> initial approximation
% T -> error tolerance
% N -> max iterations
n=0;
while n<=N% while less than max iterations
    x=f(x);%iterate x(n)=f(x(n-1))
    n=n+1;%increase number of iteration counter
    if abs(f(x)-x)<=T % root found
        root=x;
        break
    end
end
end