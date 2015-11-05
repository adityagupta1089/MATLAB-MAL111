[x,y]=meshgrid(-8:0.1:8,-8:0.1:8);
z=x.*y.*exp(-y.^2);
subplot(1,2,1);
surfc(z);
subplot(1,2,2);
contour(z);