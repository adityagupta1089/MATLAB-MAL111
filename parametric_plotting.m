clc
clear all
t=1:0.01:4;
x=2.*t.*sin(t)./(t+1);
y=t.*cos(t)./(t+1);
subplot(1,2,1);
plot(x,y);
subplot(1,2,2);
plot3(t,x,y);