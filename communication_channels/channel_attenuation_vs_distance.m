%Parameters for 0.32mm wire
Roc = 409; ac = 0.3822; L0 = 607e-6; Linf = 500e-6; b = 5.269;
fm = 609000; Cinf = 40*10^-12; C0 = 0; Ce = 1; g0 = 0; ge = 1;

%for Fixed Frequency of 1MHz, Values of R, L, G and C and Gamma
f = 1e6; w = 2*pi*f;

R_f = power(power(Roc,4) + ac*f*f, 0.25);
L_f = (L0 + Linf*power(f/fm, b))/(1+power(f/fm, b));
G_f = g0*power(f, ge);
C_f = Cinf + C0*power(f, -Ce);

Y = power(((R_f + 1i*w*L_f)*(G_f + 1i*w*C_f)), 0.5);

%Studying Variation from distance 100m to 2000m
d0 = 100;
figure(1);

for c = 0:19
    d = d0 + c*100; %Incrementing Distance by 100m every iteration
    H_f = exp(-Y*d);
    H_dbHz = 10*log10(abs(H_f));
    plot(d/1000, H_dbHz, 'O')
    hold all;
end

xlim([0 2]);
ylim([-1000 0]);
title('Impulse Response vs Distance for Frequency 1MHz')
xlabel('d(Km)')
ylabel('|H(dBHz)|')
hold off;
grid on;

%For Fixed distance of 1000m, studying variation with Frequency
f0 = 1;
f_int = 500;
d = 1000;
figure(2);

for c = 0:200
    f = f0*1000 + c*f_int*1000; %Incrementing by 500KHz every iteration
    
    %Updating Values of R, L, G, C and Y
    w = 2*pi*f;
    
    R_f = power(power(Roc,4) + ac*f*f, 0.25);
    L_f = (L0 + Linf*power(f/fm, b))/(1+power(f/fm, b));
    G_f = g0*power(f, ge);
    C_f = Cinf + C0*power(f, -Ce);
    
    Y = power(((R_f + 1i*w*L_f)*(G_f + 1i*w*C_f)), 0.5);
    H_f = exp(-Y*d);
    H_dbHz = 10*log10(abs(H_f));
    
    plot(f/1e6, H_dbHz, 'O')
    hold all;
end

xlim([0 10]);
ylim([-1600 0]);
title('Impulse Response vs Frequency for Distance 1 Km')
xlabel('f (MHz)')
ylabel('|H(dBHz)|')
hold off;
grid on;