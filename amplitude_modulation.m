clc;
clear all;
close all;


fm = 5;
fc = 50;

m1 = 0.5;
m2 = 1;
m3 = 1.5;

t = [0:0.001:2];


m = sin(2*pi*fm*t);
c = sin(2*pi*fc*t);

s1 = (1+m1*m).*c;



subplot(5,1,1);
plot(t,s1);