clc;
clear all;
close all;

% Gaussian
x = -10:0.01:10;
m = 0;
s = 1;
p = (1/sqrt(2*pi)*s)*(exp(-power(x-m, 2)/(2*s*s)));
subplot(3,1,1);
plot(x, p);
xlabel('X');
ylabel('Y');
title('Gaussian Distribution Function');

% Uniform
x = -5:0.01:5;
a = -4; 
b = 4;

for i = 1 : length(x)
  if(x(i) >= a && x(i) <= b)
    f(i) = 1/(b-a);
  else
    f(i) = 0;
  end
end

subplot(3,1,2);
plot(x, f);
xlabel('X');
ylabel('Y');
title('Uniform Distribution Function');

% Binomial
x = -5:0.01:5;
p = 0.5;
n = 100;

for k = 0 : 1 : n
  nCk = factorial(n)/(factorial(k)*factorial(n-k));
  B(k+1) = nCk*(p^k)*((1-p)^(n-k));
end

subplot(3,1,3);
stem(0:n, B);
grid on;
xlabel('X');
ylabel('P(X)');
title('Binomial Distribution Function');
