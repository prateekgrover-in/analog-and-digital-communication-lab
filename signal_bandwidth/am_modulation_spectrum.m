clc
clear all
close all

fs = 2000;
t = -30:1/fs:30;
y1 = sinc(t);
y2 = cos(2000*pi*t);
y = y1.*y2;

figure(1)
subplot(2,1,1)
plot(t,y)
title('Time Domain Signal : sinc(t).cos(2000*pi*t)')
ylabel('Amplitude');
xlabel('Time');

N = length(y);
f = linspace(-fs/2,fs/2,N);
y_f = fft(y)/N;

subplot(2,1,2)
plot(f,fftshift(abs(y_f)))
title('Frequency Domain Signal for sinc(t).cos(2000*pi*t)')
ylabel('Frequency');
xlabel('Time');
xlim([-2000 2000])