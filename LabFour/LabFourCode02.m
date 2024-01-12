% SSP Continuous

% Clear command window and workspace
clc;
clear global;

% Define the discrete signal
x = [1, 2, 3, 4];

% Plot the signal in the time domain
figure;
subplot(3, 2, [1, 2]);
stem(x, 'b', 'linewidth', 2); % Using stem for discrete signals
xlabel('Sample Index');
ylabel('Amplitude');
title('Signal in Time Domain');
grid on;
axis tight;
set(gca, 'fontsize', 6);

% Perform FFT on the signal
N = length(x);
X = fft(x, N);
mag = abs(X);
ph = angle(X);

% Frequency vector
fs = 1; % Sampling frequency for discrete signals
fr = linspace(0, fs/2, N/2);

% Plot the magnitude spectrum
subplot(3, 2, 3);
stem(fr, mag(1:N/2), 'r', 'linewidth', 2);
xlabel('Frequency');
ylabel('Magnitude');
title('Signal in Frequency Domain (Magnitude Spectrum)');
grid on;
axis tight;
set(gca, 'fontsize', 6);

% Plot the phase spectrum
subplot(3, 2, 4);
stem(fr, ph(1:N/2), 'r', 'linewidth', 2);
xlabel('Frequency');
ylabel('Phase');
title('Signal in Frequency Domain (Phase Spectrum)');
grid on;
axis tight;
set(gca, 'fontsize', 6);

% Perform Inverse FFT
ix = ifft(X);

% Plot the signal in the time domain after inverse FFT
subplot(3, 2, [5, 6]);
stem(ix, 'b', 'linewidth', 2);
xlabel('Sample Index');
ylabel('Amplitude');
title('Signal in Time Domain (Inverse FFT)');
grid on;
axis tight;
set(gca, 'fontsize',6);