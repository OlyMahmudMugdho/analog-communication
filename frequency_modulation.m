clc;
clear all;
close all;

B = 10;
fm = 25;
fc = 400;

t = 0:0.0001:0.25;

m = cos(2*pi*fm*t);
c = sin(2*pi*fc*t);
s = sin(2*pi*fc*t + (B.*sin(2*pi*fm*t)));

subplot(5,1,1);
plot(t,m);
xlabel("Time");
ylabel("Amplitude");
title("Message Signal");

subplot(5,1,2);
plot(t,c);
xlabel("Time");
ylabel("Amplitude");
title("Carrier Signal");

subplot(5,1,3);
plot(t,s);
xlabel("Time");
ylabel("Amplitude");
title("FM Signal");
