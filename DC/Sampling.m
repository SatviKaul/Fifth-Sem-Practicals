clc;
clear all;
close all;

am = 2;
fm = 1000;
fs = 50*fm;
t = 0 : 1/(1000*fs) : 5/fm;
mt = am*cos(2*pi*fm*t);
subplot(4, 1, 1);
plot(t, mt);
xlabel('time');
ylabel('m(t)');
title('Message Signal');

s1_t = (1 + square(2*pi*fs*t, 0.1)/2);
s2_t = (1 + square(2*pi*fs*t, 20)/2);

subplot(4, 1, 2);
plot(t, s1_t .* mt);
xlabel('time');
ylabel('y(t)');
title('Sample Signal 1');

subplot(4, 1, 3);
plot(t, s2_t.*mt);
xlabel('time');
ylabel('y(t)');
title('Sample Signal 2');

[n, d] = butter(10, 1/50);
y1_t = filter(n, d, s1_t.*mt);
subplot(4, 1, 4);
plot(t, y1_t);
xlabel('time');
ylabel('m1(t)');
title('Reconstructed wave');