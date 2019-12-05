clc;
clear all;
close all;
am = 2;
fm = 1000;
fs = 50*fm;
t = 0:1/(1000*fs):5/fm;
m_t = am*cos(2*pi*fm*t);
subplot(5,1,4);
plot(t,m_t);
title('Message Signal');

s1_t = (1+square(2*pi*fs*t,0.1)/2);
s2_t = (1+square(2*pi*fs*t,20)/2);

subplot(5,1,2);
plot(t,s1_t.*m_t);
title('Sample Signal 1');

subplot(5,1,3);
plot(t,s2_t.*m_t);
title('Sample Signal 2');

[n,d] = butter(10,1/60);
y = filter(n,d,s1_t.*m_t);
subplot(5,1,4);
plot(t,y);
title('Reconstructed wave 1');

[n1,d1] = butter(10,1/60);
y1 = filter(n1,d1,s2_t.*m_t);
subplot(5,1,5);
plot(t,y);
title('Reconstructed wave 2');