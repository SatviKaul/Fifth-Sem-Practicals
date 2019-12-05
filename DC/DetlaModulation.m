clc;
clear all;
close all;

a = 2;
t = 0 : 1/100 : 1;
x = a*sin(2*pi*t);
l = length(x);
delta = input('Required step size: ');
xn = 0;
for i = 1 : l
  if x(i) >= xn(i)
    d(i) = 1;
    xn(i+1) = xn(i) + delta;
  else
    d(i) = 0;
    xn(i+1) = xn(i) - delta;
  end
end

subplot(4, 1, 1);
stairs(t, xn(1 : l));
title('Staircase approximation');
subplot(4, 1, 2);
stairs(t, d);
ylim([-0.2 1.2]);
title('Encoded Bit Stream');
r = 0;
for i = 1 : length(d)
  if d(i) == 0
    r(i+1) = r(i) - delta;
  else
    r(i+1) = r(i) + delta;
  end
end

[p, q] = butter(2, 1/20);
rec = filter(p, q, r);
subplot(4, 1, 3);
stairs(t, r(1 : l));
hold on;
plot(t, x, '--');
legend('Recovered approximation', 'Original Signal');
title('Delta Modulation / Demodulation');
subplot(4, 1, 4);
plot(t, rec(2 : l));
title('Recovered Analog Waveform');