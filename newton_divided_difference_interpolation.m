function val = newton_divided_difference_interpolation(x,y,z)
% sample input : newton_divided_difference_interpolation([0.70 0.72 0.74 0.76 0.78 0.80 0.82 0.84 0.86 0.88],[0.8423 0.8771 0.9131 0.9505 0.9893 1.0296 1.0717 1.1156 1.1616 1.2097],0.71)
% sample output:
n=numel(x);
F=zeros(n);
% first row is the values of y.
for i=1:n
    F(1,i)=y(i);
end
% further rows are constructed using formula. 
for i=2:n
    for j=1:n-i+1
        F(i,j)=(F(i-1,j+1)-F(i-1,j))/(x(i+j-1)-x(j));
    end
end
% using the formula.
%Pn(x) = f[x0] + f[x0, x1](x ? x0) + a2(x ? x0)(x ? x1)+ ... + an(x ? x0)(x ? x1)· · ·(x ? xn?1)
f=0;
for i=1:n
    y=1;
    for j=1:i-1
        y=y*(z-x(j));
    end
    f=f+y*F(i,1);
end
val=f;
end

        