% SSP -- Continuous

% Clear command window and workspace
clc;
clear global;

% Define signal parameters
fs = 1000; % Sampling frequency
t = 0:1/fs:1-1/fs; % Time vector

% Generate the signal
x = 10*sin(2*pi*30*t) + 11*sin(2*pi*15*t) + 6*sin(2*pi*75*t) + 4.5*sin(2*pi*5*t);

% Plot the signal in the time domain
figure;
subplot(3,2,[1,2]);
plot(t, x, 'b', 'linewidth', 2);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Signal in Time Domain');
grid on;
axis tight;
set(gca, 'fontsize', 8);

% Perform FFT on the signal
N = length(x);
X = (2/N)*fft(x, N);
mag = abs(X);
ph = angle(X);

% Frequency vector
fr = linspace(0, fs/2, N/2);

% Plot the magnitude spectrum
subplot(3,2,3);
stem(fr, mag(1:N/2), 'r', 'linewidth', 2);
xlabel('Frequency');
ylabel('Magnitude');
title('Signal in Frequency Domain (Magnitude Spectrum)');
grid on;
axis tight;
set(gca, 'fontsize', 8);

% Plot the phase spectrum
subplot(3,2,4);
stem(fr, ph(1:N/2), 'r', 'linewidth', 2);
xlabel('Frequency');
ylabel('Phase');
title('Signal in Frequency Domain (Phase Spectrum)');
grid on;
axis tight;
set(gca, 'fontsize', 8);

% Perform Inverse FFT
ix = ifft(X);

% Plot the signal in the time domain after inverse FFT
subplot(3,2,[5,6]);
plot(t, ix, 'b', 'linewidth', 2);
xlabel('Time (sec)');
ylabel('Amplitude');
title('Signal in Time Domain (Inverse FFT)');
grid on;
axis tight;
set(gca, 'fontsize',8  );

