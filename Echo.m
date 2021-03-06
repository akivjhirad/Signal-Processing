% Creating an echo in a sound file using shifted signals

[signal, Fs, bits_per_sample] = wavread('speech.wav');

L = length(signal);     % # of samples in the signal.
T = 1/Fs                % Sampling period in seconds.
t = [0:L-1] * T;        % Time vector in seconds.

Te = 100;   % echo delay in msec.
alpha = 0.8;    % change in amplitude of input signal.
signalplusecho = [signal ; zeros(Te, 1)];   % array storing echo'd signal.
for k = 1:L-1
    signalplusecho(k+Te) = signalplusecho(k + Te) + alpha .* signal(k);
end
 
wavwrite(signalplusecho, Fs, 8, '...');

% Creating an echo in a sound file using convolution

impulse = [1 ; zeros(Te, 1) ; alpha];   % impulse function.
signalplusecho2 = conv(signal, impulse);    % impulse response of the original signal.
wavwrite(signalplusecho2, Fs, 8, '...');

% Creating reverberation in an audio signal (echos that exponentially decrease in amplitude)

reverb = [1 ; zeros(10, 1)];
for i = 2:10
    reverb(i*Te) = alpha^i;
end 
signalplusreverb = conv(signal, reverb);
wavwrite(signalplusreverb, Fs, 8, '...');
