function val = newton_backward_difference_interpolation(x,y,z)
% sample input : newton_backward_difference_interpolation([0.70 0.72 0.74 0.76 0.78 0.80 0.82 0.84 0.86 0.88],[0.8423 0.8771 0.9131 0.9505 0.9893 1.0296 1.0717 1.1156 1.1616 1.2097],0.71)
% sample output: 0.8595
% X-Input must be equidistant
%   -1.1102e-16
n=numel(x);% number of elements in x (which is also equal to number of elements in y)
h=x(2)-x(1);% the constant difference
error=1e-5;% the computer error in calculating the differences [It was workaround where I took abs(h-h1)>=error]
if n>=3% if total elements are more than 3, then we check if they are equidistant
    for i=3:n
        if (abs(x(i)-x(i-1)-h)>=error)
            disp('X-Input must be equidistant');
            return;
        end
    end
end
%x0=3.85;
delta = zeros(n);
u=(z-x(n))/h;
% first row is values of y.
for i=1:n
    delta(1,i)=y(i);
end
% double loop to find difference table
for i=2:n
    for j=i:n
        delta(i,j)=delta(i-1,j)-delta(i-1,j-1);
    end
end
% using f(z)=y(1)+Sum of [(s choose k)*(k-th forward difference)]
% here s choose k = s(s-1)...(s-k+1)/k(k-1)..1
% k-th forward difference is delta(k+1,n)
val=y(n);
for i=1:n-1
    y=1;
    for j=1:i
        y=y*(u+j-1)/j;
    end
    val=val+y*delta(i+1,n);
end
end