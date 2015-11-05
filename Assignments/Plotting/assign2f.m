[x,y]=meshgrid(-8:0.1:8,-8:0.1:8);
z=(4.*x.^2+y.^2).*exp(-x.^2-y.^2);
subplot(1,2,1);
surfc(z);
subplot(1,2,2);
contour(z);