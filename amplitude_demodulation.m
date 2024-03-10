clc;
clear all;
close all;
fs = 150;
fc = 10;
fm = .4;
t = 0:1/fs:10;
m = cos(2*pi*fm*t);
c = cos(2*pi*fc*t);
y = ammod(m,fc,fs);
subplot(5,1,1);
plot(t,m);
subplot(5,1,2);
plot(t,c);
subplot(5,1,3);
plot(t,y);
Vd(1) = 0;
for i=2:length(y)
    if y(i) > Vd(i-1)
        Vd(i) = y(i);
    else
        Vd(i) = Vd(i-1) - 0.023*Vd(i-1)
    end
end

h = fir1(100,0.0125,"low");
foutputc = filter(h,1,Vd);
subplot(5,1,4);
plot(t,Vd);



subplot(5,1,5);
plot(t,foutputc);






















