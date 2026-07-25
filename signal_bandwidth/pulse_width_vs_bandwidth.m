clc
clear all
close all;

fs = 1000;
t = -30: 1/fs: 30;

y1 = rectpuls(t,8);
y2 = rectpuls(t,16);
y3 = rectpuls(t,40);

L1 = length(y1);
L2 = length(y2);
L3 = length(y3);
f1 = linspace(-fs/2,fs/2,L1);
f2 = linspace(-fs/2,fs/2,L2);
f3 = linspace(-fs/2,fs/2,L3);
y1_ft = fft(y1)/L1;
y2_ft = fft(y2)/L2;
y3_ft = fft(y3)/L3;

figure(1)
subplot(2,1,1)
plot(t,y1)
title('Rectangular Pulse of width T = 4 each side');
ylabel('Amplitude');
xlabel('Time');
ylim([-0.5 1.5])

subplot(2,1,2)
plot(t,fftshift(abs(30*y1_ft)))
title('Frequency Response of Rectangular Pulse of width T = 4 each side');
ylabel('Amplitude');
xlabel('Frequency');
xlim([-1 1])

figure(2)
subplot(2,1,1)
plot(t,y2)
title('Rectangular Pulse of width T = 8 each side');
ylabel('Amplitude');
xlabel('Time');
ylim([-0.5 1.5])

subplot(2,1,2)
plot(t,fftshift(abs(30*y2_ft)))
title('Frequency Response of Rectangular Pulse of width T = 4 each side');
ylabel('Amplitude');
xlabel('Frequency');
xlim([-1 1])

figure(3)
subplot(2,1,1)
plot(t,y3)
title('Rectangular Pulse of width T = 20 each side');
ylabel('Amplitude');
xlabel('Time');
ylim([-0.5 1.5])

subplot(2,1,2)
plot(t,fftshift(abs(30*y3_ft)))
title('Frequency Response of Rectangular Pulse of width T = 20 each side');
ylabel('Amplitude');
xlabel('Frequency');
xlim([-1 1])
