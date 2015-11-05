[x,y]=meshgrid(-10:0.1:10,-10:0.1:10);
z=x.*y./sqrt(x.^2+y.^2);
subplot(1,2,1);
surfc(z);
subplot(1,2,2);
contour(z);