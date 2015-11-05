clc
clear all
x=1:0.1:80;
y1=sin(x);
y2=cos(x);
y3=sin(x)/10;
y4=cos(x)/5;
y5=cos(x)/20;
subplot(3,2,1);
plot(x,y1,'o');
subplot(3,2,2);
plot(x,y2,'*');
subplot(3,2,3);
plot(x,y3,'--');
subplot(3,2,4);
plot(x,y4,'g--');
subplot(3,2,5);
plot(x,y5,'r--','LineWidth',4);
axis([1 80 -1 1]);
xlabel('X-axis');
ylabel('Y-axis (y=sin(x))');
title('Graph of a function f(x)=sin(x)');