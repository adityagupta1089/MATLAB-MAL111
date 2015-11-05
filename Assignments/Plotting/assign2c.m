[x,y]=meshgrid(-8:0.1:8);
z=sin(sqrt(x.^2+y.^2))./sqrt(x.^2+y.^2);
surf(z);
hold on
contour(z);