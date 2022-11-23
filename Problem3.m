clc;
clf;
clear all;
close all;

n=[-3:3];
x=[-1,1,3,4,3,-2,1];

% -------------------- x1,nx1,x2,nx2 ---------------

%Original Input x(n)
x1=x; nx1=n;

%Input Response kx(n)
x2=2.*x; nx2=n;

% -------------------- y1,ny1,y2,ny2 ---------------

%Original Output
ya=(e^-0.8).*x1; na=nx1;
[yb,nb]=sigshift(x1,nx1,-1);
[y1,ny1]=sigadd(ya,na,yb,nb);

%Output Response
ya=(e^-0.8).*x2; na=nx2;
[yb,yn]=sigshift(x2,nx2,-1);
[y2,ny2]=sigadd(ya,na,yb,nb);

%Combined Response

[x3,nx3]=sigadd(x1,nx1,x2,nx2);
[y3,ny3]=sigadd(y1,ny1,y2,ny2);

%Plot
subplot(3,2,1),stem(nx1,x1),xlabel('n'),ylabel('x(n)'),title('Input x1=x'),grid on;
subplot(3,2,2),stem(ny1,y1),xlabel('n'),ylabel('y(n)'),title('Output y1'),grid on;
subplot(3,2,3),stem(nx2,x2),xlabel('n'),ylabel('x(n)'),title('Input x2=x'),grid on;
subplot(3,2,4),stem(ny2,y2),xlabel('n'),ylabel('y(n)'),title('Output y2'),grid on;
subplot(3,2,5),stem(nx3,x3),xlabel('n'),ylabel('x(n)'),title('Combination of Input Response'),grid on;
subplot(3,2,6),stem(ny3,y3),xlabel('n'),ylabel('y(n)'),title('Combination of Output Response'),grid on;
