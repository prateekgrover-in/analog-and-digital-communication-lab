%Given Frequency Response of Signal G(f)
f = -4.01: 0.01:4;
G_f = 2*rectpuls(f,8);

%g(t) : Impulse Response of G(f)
fs = 1000;
t = -2*8:1/fs:2*8;
g_t = 8*sinc(8*t);

%Input to system is x(t)
x_t = rectpuls(t,8);

%Output of system is y(t)
y_t = conv(x_t,g_t,'same');

figure(1)

subplot(2,2,1)
plot(f,G_f)
title('G(f)')
ylabel('Amplitude');
xlabel('Frequency');
xlim([-5 5])
ylim([0 2.5])

subplot(2,2,2)
plot(t,g_t);
title('g(t)')
ylabel('Amplitude');
xlabel('Time');
xlim([-10 10])
ylim([-5 10])

subplot(2,2,3)
plot(t,x_t);
ylabel('Amplitude');
xlabel('Time');
title('x(t)')
xlim([-5 5])
ylim([0 1.5])

subplot(2,2,4)
plot(t,y_t);
title('x(t)*g(t)')
ylabel('Amplitude');
xlabel('Time');
xlim([-10 10])

