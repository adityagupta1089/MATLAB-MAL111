x=[0,10^5];
semilogx
for k =[-0.0004,-0.0002,-0.006]
   y=10*exp(k*x);
   plot(x,y);
   hold on
end