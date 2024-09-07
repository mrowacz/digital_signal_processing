% Generate a sample signal
fs = 1000;        % Sampling frequency (Hz)
t = 0:1/fs:1-1/fs; % Time vector coefficients
f1 = 50;          % Frequency of the first sinusoid (Hz)
f2 = 120;         % Frequency of the second sinusoid (Hz)
x = cos(2*pi*f1*t) + 0.5*sin(2*pi*f2*t); % Combined signal
% Compute FFT
N = length(x);       % Length of the signal
X = fft(x);          % Perform FFT
% Frequency axis for plotting
frequencies = fs*(0:(N/2))/N;
% Plot the magnitude spectrum
subplot(2,1,1);
plot(frequencies, 2*abs(X(1:N/2+1))/N);
title('Single-Sided Amplitude Spectrum of x(t)');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
% Plot the phase spectrum
subplot(2,1,2);
plot(frequencies, angle(X(1:N/2+1)));
title('Phase Spectrum of x(t)');
xlabel('Frequency (Hz)');
ylabel('Phase (radians)');