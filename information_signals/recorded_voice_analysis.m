%Lab 2: August 25 - Task 1 : Analyzing Recorded Voice

%Reading audio file from folder
filename = 'Recording for Task1.mp3';
[audio,Fs] = audioread(filename);

%length(audio) is 1661808
%sound(audio,Fs);
duration_audio = length(audio)/Fs;
%duration_audio is 37.6827 seconds

figure(1);
t = linspace(0, duration_audio, length(audio));
plot(t, audio);
title('Recorded Audio')
xlabel('t')
ylabel('|Audio(t)|')

figure(2);
audio_f= fft(audio)/length(audio); 
f_axis= linspace(-Fs/2, Fs/2,length(audio));
f_axis = f_axis/1000;
audio_db = 10*log10(abs(audio_f));  %converting to decibel scale
plot(f_axis, fftshift(audio_db));

title('Frequency Response of Recorded audio')
xlabel('f (KHz)')
ylabel('|Audio(dB)|')
%Peak is observed at ~250 Hz.