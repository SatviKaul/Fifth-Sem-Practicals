clc;
clear all;

f1 = 5;
f2 = 10;
x = round(rand(1, 10));
nx = size(x, 2);
subplot(4, 1, 1);
stairs(x);
title('Message Signal');
axis([1 10 -0.2 1.2]);

i = 1;
while i < nx+1
  t = i : 0.001 : i+1;
  if x(i) == 1
    ask = sin(2*pi*f1*t);
    fsk = sin(2*pi*f1*t);
    psk = sin(2*pi*f1*t);
  else
    ask = 0; 
    fsk = sin(2*pi*f2*t);
    psk = sin(2*pi*f2*t);
  end
  
  subplot(4, 1, 2);
  plot(t, ask);
  hold on;
  grid on;
  title('Amplitude Shift Key');
  
  subplot(4, 1, 3);
  plot(t, fsk);  
  hold on;
  grid on;
  title('Frequency Shift Key');
  
  subplot(4, 1, 4);
  plot(t, psk);
  hold on;
  grid on;
  title('Phase Shift Key');
  
  i = i + 1;
end