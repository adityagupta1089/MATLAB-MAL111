function val = lagrange_interpolation(x,y,z)
% sample input : lagrange_interpolation([2 2.75 4],[1/2 1/2.75 1/4],3)
% sample output: 0.3295
% y=f(x)
% we need to find f(z) using x and y values
val=0;
n=numel(x);% numel = number of elements
for i=1:n
    % using formula f(z)=Sum of [y(i)* Product of [(z-x(j))/(x(i)-x(j))] where j~= i]
    p=y(i);
    for j=1:n
        if(j~=i)
            p=p*(z-x(j))/(x(i)-x(j));
        end
    end
    val=val+p;
end
end

