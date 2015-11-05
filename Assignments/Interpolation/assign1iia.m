clc
clear all
x=[0 0.25 0.5 0.75];
y=[1 1.64872 2.718828 4.48169];
n=numel(x);
z=0.43;
f=0;
for i=1:n
    p=y(i);
    for j=1:n        
        if(j~=i)
            p=p*(z-x(j))/(x(i)-x(j));
        end
    end
     f=f+p;
end
fprintf('f(%f) = %f\n',z,f);           
