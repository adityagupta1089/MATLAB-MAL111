[x,y]=meshgrid(-8:0.1:8,-8:0.1:8);
z=exp((-x.^2+y.^2)./8).*(sin(x.^2)+cos(y.^2));
subplot(1,2,1);
surfc(z);
subplot(1,2,2);
contour(z);