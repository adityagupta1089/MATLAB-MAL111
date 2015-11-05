clc
clear all
theta = linspace(0,pi,50);
phi=linspace(0,4*pi,50);
r=3;
[theta,phi]=meshgrid(theta,phi);
x=r.*sin(theta).*cos(phi);
y=r.*sin(theta).*sin(phi);
z=r.*cos(theta);
subplot(2,2,1);
mesh(x,y,z);
subplot(2,2,2)
surf(x,y,z);
subplot(2,2,3);
plot3(x,y,z);