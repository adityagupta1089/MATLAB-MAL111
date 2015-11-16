clc
clear all
r=2;
h=linspace(-5,5,10);
theta=linspace(0,2*pi,50);
[h,theta]=meshgrid(h,theta);
x=r.*cos(theta);
y=r.*sin(theta);
z=h;
mesh(x,y,z);