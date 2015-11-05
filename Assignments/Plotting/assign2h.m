[x,y]=meshgrid(-8:0.1:8);
z=x.^2.*y-2*y;
subplot(1,2,1);
surf(z);
subplot(1,2,2);
contour(z);