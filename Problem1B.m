clc;
clf;
clear all;
close all;

n=[-3:3];
x=[-1,1,3,4,3,-2,1];

% ===========Inputs===========

%Original Input
x1=x; nx1=n;

%Shifted Input
[x2,nx2]=sigshift(x1,nx1,3);

%Original Output
ya=x1; na=nx1;
yb=stepseq(0,-3,3); nb=nx1;
[y1,ny1]=sigmult(ya,na,yb,nb);

%Shifted Output
ya=x2; na=nx2;
yb=stepseq(0,-3,3); nb=nx2;
[y2,ny2]=sigmult(ya,na,yb,nb);

%Plot
subplot(2,2,1),stem(nx1,x1),xlabel('n'),ylabel('x(n)'),title('Input x1=x'),grid on;
subplot(2,2,2),stem(ny1,y1),xlabel('n'),ylabel('y(n)'),title('Output y1'),grid on;
subplot(2,2,3),stem(nx2,x2),xlabel('n'),ylabel('x(n)'),title('Input x2=shifted input'),grid on;
subplot(2,2,4),stem(ny2,y2),xlabel('n'),ylabel('y(n)'),title('Output y2=shifted output'),grid on;

