% Aliasing in the Telephone System

% Part 1
f = 100;  % Do a plot of sampled sinusoid with frequency f = 100 Hz    
fs = 8000;  % Sampling frequency and interval
Ts = 1 / fs;    

tfinalplot = 10e-3;     % Set time duration of plot, i.e., 10 msec
nplot = 0:Ts:tfinalplot;    % Make the time vector for the plot
xnT = sin(2*pi*f*nplot);    % Sample the sinusoid.
stem(nplot, xnT); xlabel('time'); ylabel('amplitude'); % Make the plot
title('Question 1: frequency = 100 Hz');
% print -djpg graph1.jpg  % Uncomment/edit this next line to save the graph.

% % Part 2
f = 100;    % Use sinusoid frequency f = 100 Hz
fs = 8000;  % Sampling frequency and interval
Ts = 1/fs;
tfinalplot = 10e-3;     % Set time duration of plot, i.e., 10 msec
nplot = 0:Ts:tfinalplot;    % Make the time vector for the plot

% Make the time vector for replayed sound spurt
tfinal = 2; % Play the spurt for 2 seconds
nsound = 0:Ts:tfinal;

xnT1 = sin(2*pi*f*nsound); % Sample the sinusoid
figure;
subplot(4, 1, 1);
plot(nplot, xnT1(1:length(nplot))); xlabel('time'); ylabel('amplitude'); % Make the plot
title('Question 2: frequency = 100 Hz');

f = 200;
xnT2 = sin(2*pi*f*nsound);
subplot(4, 1, 2);
plot(nplot, xnT2(1:length(nplot))); xlabel('time'); ylabel('amplitude');% Make the plot
title('Question 2: frequency = 200 Hz');
 
f = 400;
xnT3 = sin(2*pi*f*nsound);
subplot(4, 1, 3);
plot(nplot, xnT3(1:length(nplot))); xlabel('time'); ylabel('amplitude');% Make the plot
title('Question 2: frequency = 400 Hz');

f = 800;
xnT4 = sin(2*pi*f*nsound);
subplot(4, 1, 4);
plot(nplot, xnT4(1:length(nplot))); xlabel('time'); ylabel('amplitude');% Make the plot
title('Question 2: frequency = 800 Hz');

xnTfinal = [xnT1, xnT2, xnT3, xnT4];
figure;
plot(4*nplot, xnTfinal(1:length(4*nplot))); xlabel('time'); ylabel('amplitude');
title('Question 2: Concatenated Tone Segments');

wavwrite(xnTfinal, fs, 8, '...'); % Save xnT2 as a wav sound file, soundfile.wav
% Print -djpg graph2.jpg % Uncomment/edit this next line to save the graph.

% Part 3
f = 7200;
xnT5 = sin(2*pi*f*nsound);
figure;
subplot(4, 1, 1);
plot(nplot, xnT5(1:length(nplot))); xlabel('time'); ylabel('amplitude'); ; % Make the plot
title('Question 3: frequency = 7200 Hz');

f = 7600;
xnT6 = sin(2*pi*f*nsound);
subplot(4, 1, 2);
plot(nplot, xnT6(1:length(nplot))); xlabel('time'); ylabel('amplitude'); % Make the plot
title('Question 3: frequency = 7600 Hz');

f = 7800;
xnT7 = sin(2*pi*f*nsound);
subplot(4, 1, 3);
plot(nplot, xnT7(1:length(nplot))); xlabel('time'); ylabel('amplitude'); % Make the plot
title('Question 3: frequency = 7800 Hz');

f = 7900;
xnT8 = sin(2*pi*f*nsound);
subplot(4, 1, 4);
plot(nplot, xnT8(1:length(nplot))); xlabel('time'); ylabel('amplitude'); % Make the plot
title('Question 3: frequency = 7900 Hz');

xnTfinal2 = [xnT5, xnT6, xnT7, xnT8];
figure;
plot(4 * nplot, xnTfinal2(1:length(4 * nplot))); xlabel('time'); ylabel('amplitude');
title('Question 3: Concatenated tone segments');

wavwrite(xnTfinal2, fs, 8, '...'); % Save xnT2 as a wav sound file, soundfile.wav
% Print -djpg graph2.jpg % Uncomment/edit this next line to save the graph.

% Alising of a Frequency Chirp Signal

% Part 1

f1 = 100;
mu = 2000;
fs = 32000; % Sampling frequency and interval
Ts = 1/fs;

tfinalplot = 8;
nplot = 0:Ts:8;

tfinal = 8; % Play the spurt for 2 seconds
nsound = 0:Ts:tfinal;

ct = cos(pi* mu *(nsound .^2) + 2*pi*f1*nsound);    %sampling the graph
figure;
plot(nplot(1:2000), ct(1:length(nplot(1:2000)))); xlabel('time'); ylabel('amplitude');  %making the plot
title('Chirp Signal sampling frequency = 32 kHz');
wavwrite(ct, fs, 8, '...'); % Save xnT2 as a wav sound file, soundfile.wav

% Part 2

fs = 16000;
Ts = 1/fs;
tfinalplot = 8;
nplot = 0:Ts:tfinalplot;

tfinal = 8; % Play the spurt for 2 seconds
nsound = 0:Ts:tfinal;

ct2 = cos(pi* mu *(nsound .^2) + 2*pi*f1*nsound);    %sampling the graph
% figure;
% plot(nplot(1:2000), ct2(1:length(nplot(1:2000)))); xlabel('time'); ylabel('amplitude');   %making the plot
title('Chirp Signal sampling frequency = 16 kHz');
wavwrite(ct2, fs, 8, '...'); % Save xnT2 as a wav sound file, soundfile.wav

fs = 8000;
Ts = 1/fs;
tfinalplot = 8;
nplot = 0:Ts:tfinalplot;

tfinal = 8; % Play the spurt for 2 seconds
nsound = 0:Ts:tfinal;

ct3 = cos(pi* mu *(nsound .^2) + 2*pi*f1*nsound);    %sampling the graph
% figure;
% plot(nplot(1:2000), ct3(1:length(nplot(1:2000)))); xlabel('time'); ylabel('amplitude');;  %making the plot
title('Chirp Signal sampling frequency = 8 kHz');
wavwrite(ct3, fs, 8, '...'); % Save xnT2 as a wav sound file, soundfile.wav

%extra random fun

x = zeros(1, length(ct));
k = 1;
for i = 1:length(ct)
    if (ct(1, i) > 0)
        x(1, k) = ct(1, i);
        k = k+1;
    end
end
figure;
plot(nplot(1:2000), x(1:length(nplot(1:2000))));
wavwrite(x, fs, 8, '...');
title('x');

y = zeros(1, length(ct));
m = 1;
for j = 1:length(ct)
    if (ct(1, j) < 0)
        y(1, m) = ct(1, j);
        m = m+1;
    end
end
figure;
plot(nplot(1:2000), y(1:length(nplot(1:2000))));
wavwrite(y, fs, 8, '...');
title('y');

z = zeros (1, length(ct));
m = 1;
n = 1;
for a = 1:length(ct)/2
    z(1, m) = x(1, a);
    z(1, n) = y(1, a);
    m = m+1;
    n = n+1;
end

figure;
plot(nplot(1:2000), z(1:length(nplot(1:2000))));
wavwrite(z, fs, 8, '...');
title('z');
        





