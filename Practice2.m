clc;
clf;
clear all;
close all;

n=[-5:4];
x=[1,1,1,1,1,0,0,0,0,0];

% -------------------- x1,nx1,x2,nx2 ---------------

%Original Input x(n)
x1=x; nx1=n;

%Input Response kx(n)
x2=2.*x; nx2=n;

% -------------------- y1,ny1,y2,ny2 ---------------

%Original Output y(n)
ya=(0.9).*x1; na=n;
[yb,nb]=sigshift((0.8).*x1,n,1);
[yc,nc]=sigshift((0.4).*x1,n,2);
[yd,nd]=sigshift((0.1).*x1,n,3);
[y1,ny1]=sigadd(ya,na,yb,nb);
[y1,ny1]=sigadd(y1,ny1,yd,nd);
[y1,ny1]=sigsub(y1,ny1,yc,nc);

%Output Response ky(n)
ya=(0.9).*x2; na=n;
[yb,nb]=sigshift((0.8).*x2,n,1);
[yc,nc]=sigshift((0.4).*x2,n,2);
[yd,nd]=sigshift((0.1).*x2,n,3);
[y2,ny2]=sigadd(ya,na,yb,nb);
[y2,ny2]=sigadd(y2,ny2,yd,nd);
[y2,ny2]=sigsub(y2,ny2,yc,nc);


% --------------------

%Combined Response

[x3,nx3]=sigadd(x1,nx1,x2,nx2);
[y3,ny3]=sigadd(y1,ny1,y2,ny2);

%Plot
subplot(3,2,1),stem(ny1,y1),xlabel('n'),ylabel('x(n)'),title('Output y1'),grid on;
subplot(3,2,2),stem(ny1,y1),xlabel('n'),ylabel('y(n)'),title('Output y2'),grid on;
subplot(3,2,3),stem(nx3,x3),xlabel('n'),ylabel('x(n)'),title('Combination of Input Response'),grid on;
subplot(3,2,4),stem(ny3,y3),xlabel('n'),ylabel('y(n)'),title('Combination of Output Response'),grid on;



