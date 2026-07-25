%Lab 2: August 25 - Task 2: Tone Generation

Fs = 1300;      % Sampling Frequency (Hz): atleast twice that of largest freq to be generated (>1240Hz)
Ts = 1/Fs;      % Sampling Interval (s)

%Dial Tone Generation
dial_time = 0:Ts:(2*Fs*Ts);   % Sound Time: 2 Seconds
%combination of 350Hz and 440Hz sine waves
dial_f1 = 350;
dial_f2 = 440;
dial_signal = 0.1*sin(2*pi*ringing_f1*ringing_time) + 0.1*sin(2*pi*ringing_f2*ringing_time);
dial_output = [repmat([dial_signal], 1, 8) dial_signal];
%soundsc(dial_output,Fs);

figure(1);
t = linspace(0, length(dial_output)*Ts, length(dial_output));
plot(t, dial_output);
title('Dial Tone Audio')
xlabel('t')
ylabel('|Dial Tone(t)|')
%xlimit([0 2])

%Ringing Tone Generation
ringing_time = 0:Ts:(2*Fs*Ts);  % Sound Time: 2 Seconds
%combination of 440Hz and 480Hz sine waves
ringing_f1 = 440;
ringing_f2 = 480;
ringing_signal = 0.1*sin(2*pi*ringing_f1*ringing_time) + 0.1*sin(2*pi*ringing_f2*ringing_time);
ringing_interval_signals = zeros(1, Fs*4); %Interval Time: 4 Seconds
ringing_output = [repmat([ringing_signal ringing_interval_signals], 1, 4) ringing_signal];
%soundsc(ringing_output,Fs);

figure(2);
t = linspace(0, length(ringing_output)*Ts, length(ringing_output));
plot(t, ringing_output);
title('Ringing Tone Audio')
xlabel('t')
ylabel('|Ringing Tone(t)|')

%Ringing Tone Generation
busy_time = 0:Ts:(0.5*Fs*Ts);  % Sound Time: 0.5 Seconds
%combination of 480Hz and 620Hz sine waves
busy_f1 = 480;
busy_f2 = 620;                  
busy_signal = 0.1*sin(2*pi*busy_f1*busy_time) + 0.1*sin(2*pi*busy_f2*busy_time);
busy_interval_signals = zeros(1, Fs*0.5);
busy_output = [repmat([busy_signal busy_interval_signals], 1, 4) busy_signal];
%soundsc(busy_output,Fs);

figure(3);
t = linspace(0, length(busy_output)*Ts, length(busy_output));
plot(t, busy_output);
title('Busy Tone Audio')
xlabel('t')
ylabel('|Busy Tone(t)|')
