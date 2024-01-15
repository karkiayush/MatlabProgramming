% 1. Unipolar NRZ (Non-Return-to-Zero) line coding
clear all;
close all;

td = 1:400;
s = [1 0 1 0];
d = s' * ones(1, 100);
d = d';
d = d(:);

plot(td, d);
axis([0 400 -1 2]);
xlabel('Time');
ylabel('Amplitude');
title('Unipolar NRZ format');

% 2. Bipolar NRZ (Alternate Mark Inversion (AMI)) line coding
clear all;
close all;

b = [0 1 1 0 0 0 0 0 1 1 1 1 0 1];
a = length(b);
count = 0;
i = 1;

while i < a
    if b(i) == 1
        count = count + 1;
        if rem(count, 2) == 0
            b(i) = -1;
        else
            b(i) = 1;
        end
    else
        b(i) = 0;
    end
    i = i + 1;
end

d = b' * ones(1, 100);
k = d';
p = k(:);
t = 1:1400;

plot(t, p);
axis([0 1400 -2 2]);
xlabel('Time');
ylabel('Amplitude');
title('AMI format');

% 3. Polar NRZ line coding
clear all;
close all;

b = [1 1 1 0 1 1 1 1 1 0 0 0 0 0];
amp = input('Enter the value amplitude (less than 5): ');

a = length(b);

for i = 1:a
    if b(i) == 1
        b(i) = amp / 2;
    else
        b(i) = -amp / 2;
    end
end

d = b' * ones(1, 100);
k = d';
p = k(:);
t = 1:1400;

plot(t, p);
axis([0 1400 -5 5]);
xlabel('Time');
ylabel('Amplitude');
title('Polar NRZ format');

% 4. Power Spectral Density (psd) of Unipolar NRZ Format
clear all;
close all;

f = 0:1:2;
A = 1;
Tb = 1;
n = f * Tb;
a = A * A * Tb;
b = sinc(n) .* sinc(n);
s = a / 4 .* b;

subplot(311);
plot(n, s);
axis([0 2 -1 1]);
xlabel('Frequency');
ylabel('psd');
title('psd of unipolar NRZ');

% Power Spectral Density (psd) of polar NRZ Format
s = a .* b;
subplot(312);
plot(n, s);
axis([0 2 -1 1]);
xlabel('Frequency');
ylabel('psd');
title('psd of polar NRZ');

% Power Spectral Density (psd) of Bipolar NRZ Format
A = 1;
Tb = 0.5;
n = f * Tb;
a = A * A * Tb;
c = pi * n;
b = sinc(n) .* sinc(n);
d = sin(c) .* sin(c);
s = a .* b .* d;

subplot(313);
plot(n, s);
axis([0 2 -1 1]);
xlabel('Frequency');
ylabel('psd');
title('psd of bipolar NRZ');
