%Parameters provided in Task
P_t = 1; G_t = 1; G_r = 1; f_1 = 900e6; f_2 = 2.4e9;
lambda_1 = 3e8/f_1; lambda_2 = 3e8/f_2;

%Studying Variation of Power Received with Distance with Fixed Frequencies
d0 = 100;

%Frequency 1: 900 MHz
figure(1);
for c = 0:19
    d = d0 + c*100; %Incrementing distance by 100m every iteration
    
    %Updating Power Received
    P_r =(P_t*G_t*G_r*lambda_1*lambda_1)/(power(4*pi*d, 2)) ;
    P_r_dBm = 10*log10(P_r*1000);
    
    plot(d/1000, P_r_dBm, 'b-x', 'MarkerEdgeColor','b')
    hold all;
end
%Frequency 2: 2.6 GHz
for c = 0:19
    d = d0 + c*100;  %Incrementing distance by 100m every iteration
    
    %Updating Power Received
    P_r =(P_t*G_t*G_r*lambda_2*lambda_2)/(power(4*pi*d, 2)) ;
    P_r_dBm = 10*log10(P_r*1000);
    
    plot(d/1000, P_r_dBm, 'O','MarkerEdgeColor','r')
    hold all;
end
xlabel('Distance (Km)')
ylabel('Power Received (dBm)')
ylim([-100 -30]);
title('Power Received vs Distance for 900MHz (x) and 2.4GHz (o)')
hold off;
grid on;

%Extra Task
%Frequency: 2.4 GHz
lambda_x = 3e8/2.4e9;
figure(2);
P_r_dBm = -24;
while P_r_dBm > -100
    d0 = d0 + 10;  %Incrementing distance by 100m every iteration
    %Updating Power Received
    P_r =(P_t*G_t*G_r*lambda_x*lambda_x)/(power(4*pi*d0, 2)) ;
    P_r_dBm = 10*log10(P_r*1000);
    plot(d0/1000, P_r_dBm, '.','MarkerEdgeColor','r')
    hold all;
end
xlabel('Distance (Km)')
ylabel('Power Received (dBm)')
ylim([-110 -30]);
title('Power Received vs Distance until Power Received : -100 dBm')
plot(d0/1000, P_r_dBm, 'o-','MarkerFaceColor','yellow','MarkerEdgeColor','blue');
%Distance for Power Received: -100 dBm is 31.46km
grid on;
