clc;
clf;
clear all;
close all;

n=[-3:3];
x=[-1,1,3,4,3,-2,1];

[x1,n1]=sigshift(x,n,2);

%Plot
subplot(2,1,1),stem(n,x),xlabel('n'),ylabel('x(n)'),title('Input x1=x'),grid on;
subplot(2,1,2),stem(n1,x1),xlabel('n'),ylabel('x(n)'),title('Input x1=x'),grid on;
