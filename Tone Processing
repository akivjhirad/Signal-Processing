% Analysing and recreating an input Tone

% Read in the signal from the audio file
[signal, Fs, bits_per_sample] = wavread('example.wav');
L = length(signal);
T = 1/Fs;   %period of the wave
t = [0:L-1]*T;

% Plot the signal for t_plot msec
t_plot = 5;
msec_per_sec = 1000;
numSamples = t_plot * Fs / msec_per_sec;
figure;
plot(msec_per_sec * t(1:numSamples), signal(1:numSamples));
title('Plot of Input Signal'); xlabel('time (milliseconds)'); grid('minor');

% Question 5
% Take the DFT
Y = fft(signal) / L;
f = Fs / 2 * linspace(0, 1, L/2 + 1);   %making the DFT look nice

% Plot the single-sided magnitude spectrum
figure;
plot(f, 2 * abs(Y (1:L/2+1)));
title('Single-Sided Magnitude Spectrum'); xlabel('Frequency (Hz)'); ylabel('|Y(f)|'); axis([0 Fs/2 0 .45]); grid('minor'); 

% define the frequencies present in the input tone (read off the DFT output)
f_tone1 = 1000;
f_tone2 = 4000;
f_tone3 = 6000;
time = 10;

% Create the tone signal using frequencies outputted by fft analysis 
for i = 1:length(f_tone3)

  Fs2 = 16000;
  T = 1/Fs2;
  t = [0:T:time];
  s = 0.4 * sin(2*pi*f_tone1(i)*t) + 0.2 * sin(2*pi*f_tone2(i)*t) + 0.2 * sin(2*pi*f_tone3(i)*t);

end

wavwrite(s, Fs2, 16, '...tone.wav'); % write the created signal to a file and compare the sound to the input

% Output plot of created tone to compare it with the input 
t_plot = 5;
msec_per_sec = 1000;
numSamples = t_plot * Fs2 / msec_per_sec;
figure;
plot(msec_per_sec * t(1:numSamples), s(1:numSamples));
title('Plot of Tone Signal'); xlabel('time (milliseconds)'); grid('minor');

%Analysing a message with noise

% each second interval of the 28 second long input signal is made of 4 frequencies,
% corresponding to a certain letter

[signal, Fs, bits_per_sample] = wavread('SecretMessage.wav');
L = length(signal);
T = 1/Fs;
t = [0:L-1]*T;
M = L / 28;

% Take the DFT
Y = fft(signal) / L;
f = Fs / 2 * linspace(0, 1, L/2 + 1);

% Plot the single-sided magnitude spectrum
figure;
plot(f, 2 * abs(Y (1:L/2+1)));
title('Single-Sided Magnitude Spectrum'); xlabel('Frequency (Hz)'); ylabel('|Y(f)|'); axis([0 Fs/2 0 .05]); grid('minor');

% algorithm to see which frequencies are present in 1 second intervals of
% the input
for j = 1 : 28      % split input into 28, 1-second samples
    
    Y = fft(signal((j-1)*M + 1 : j*M)) / M; %taking the dft of one sample
    f = Fs / 2 * linspace(0, 1, M/2 + 1);
    figure;
    plot(f, 2 * abs(Y (1 : M/2+1)));    %plotting one sample
    title('Single-Sided Magnitude Spectrum'); xlabel('Frequency (Hz)'); ylabel('|Y(f)|'); axis([0 Fs/2 0 .06]); grid('minor');
    
end
