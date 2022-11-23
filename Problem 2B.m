clc;
clf;
clear all;
close all;
pkg load signal;

n=[-3:3];
x=[-1,1,3,4,3,-2,1];

% ===========Inputs===========

%Original Input x(n)
x1=x; nx1=n;

%Shifted Input
[x2,nx2]=sigshift(x1,nx1,3);

% ===========Outputs===========

%Original Output
ya=x1; na=nx1;
[yb,nb]=sigshift((1/2).*x1,nx1,2);
[yc,nc]=sigshift((1/3).*x1,nx1,3);
[yd,nd]=downs(x1,-3,3,3);
[y1,ny1]=sigmult(yc,nc,yd,nd);
[y1b,ny1b]=sigadd(ya,na,yb,nb);
[y1,ny1]=sigsub(y1b,ny1b,y1,ny1);

%Shifted Output
ya=x2; na=nx2;
[yb,nb]=sigshift((1/2)*x2,nx2,2);
[yc,nc]=sigshift((1/3)*x2,nx2,3);
[yd,nd]=downs(x2,-3,3,3);
[y2,ny2]=sigmult(yc,nc,yd,nd);
[y2b,ny2b]=sigadd(ya,na,yb,nb);
[y2,ny2]=sigsub(y2b,ny2b,y2,ny2);

%Plot
subplot(2,2,1),stem(nx1,x1),xlabel('n'),ylabel('x(n)'),title('Input x1=x'),grid on;
subplot(2,2,2),stem(ny1,y1),xlabel('n'),ylabel('y(n)'),title('Output y1'),grid on;
subplot(2,2,3),stem(nx2,x2),xlabel('n'),ylabel('x(n)'),title('Input x2=shifted input'),grid on;
subplot(2,2,4),stem(ny2,y2),xlabel('n'),ylabel('y(n)'),title('Output y2=shifted output'),grid on;

