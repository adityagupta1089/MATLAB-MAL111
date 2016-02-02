clc
clear all
r=2;% radius
h0=-5;% min height
h1=5;% max height
h2=20;% no of divisions in height
h=linspace(h0,h1,h2);% height
a0=0;% min angle
a1=2*pi;% max angle
a2=50;% angle divisions
theta=linspace(0,2*pi,50);% angle
[h,theta]=meshgrid(h,theta);% meshgrid
% converting cylinderical coordinates to cartesian coordinates
% cylinder (x,y,z)=(r.cos(theta),r.sin(theta),h)
x=r.*cos(theta);
y=r.*sin(theta);
z=h;
% draw the figure with mesh command
mesh(x,y,z);