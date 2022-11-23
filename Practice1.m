clc;
clf;
clear all;
close all;

n=[-5:4];
x=[1,2,3,4,5,0,0,0,0,0];

% -------------------- x1,nx1,x2,nx2 ---------------

%Original Input x(n)
x1=x; nx1=n;

%Input Response kx(n)
x2=2.*x; nx2=n;

% -------------------- y1,ny1,y2,ny2 ---------------

%Original Output y(n)
y1=3.*(x1).^2; ny1=n;

%Output Response ky(n)
y2=3.*(x2).^2; ny2=n;

% --------------------

%Combined Response
[x3,nx3]=sigadd(x1,nx1,x2,nx2);
[y3,ny3]=sigadd(y1,ny1,y2,ny2);

subplot(3,2,1),stem(nx3,x3),xlabel('n'),ylabel('x(n)'),title('Combination of Input Response'),grid on;
subplot(3,2,2),stem(ny3,y3),xlabel('n'),ylabel('y(n)'),title('Combination of Output Response'),grid on;

