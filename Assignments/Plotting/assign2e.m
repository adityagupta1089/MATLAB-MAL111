[x,y]=meshgrid(-10:0.1:10,-10:0.1:10);
z=sin(x)+2*sin(y);
subplot(1,2,1);
surfc(z);
subplot(1,2,2);
contour(z);