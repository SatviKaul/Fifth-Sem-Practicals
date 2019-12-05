clc;
clear all;
close all;
% ASK
x = round(rand(1,10));
t = 0:0.001:0.999;
s = sin(2*pi*t);
ask = [];
for i=1:10
    if x(i)==1
        ask = [ask s];
    else
        ask = [ask zeros(size(s))];
    end
end
subplot(6,1,1);
stairs(0:10,[x x(10)]);
axis([0,10,-0.2,1.2]);
subplot(6,1,2);
plot(0:0.001:9.999,ask);

% PSK

clc;
clear all;
close all;
x = round(rand(1,10));
t = 0:0.001:0.999;
s = sin(2*pi*t);
psk = [];
for i=1:10
    if x(i)==1
        psk = [psk s];
    else
        psk = [psk -s];
    end
end
subplot(6,1,3);
stairs(0:10,[x x(10)]);
axis([0,10,-0.2,1.2]);
subplot(6,1,4);
plot(0:0.001:9.999,psk);

% FSK

clc;
clear all;
close all;
x = round(rand(1,10));
t = 0:0.001:0.999;
s1 = sin(2*pi*2*t);
s2 = sin(2*pi*5*t);
fsk = [];
for i=1:10
    if x(i)==1
        fsk = [fsk s1];
    else
        fsk = [fsk s2];
    end
end
subplot(6,1,5);
stairs(0:10,[x x(10)]);
axis([0,10,-0.2,1.2]);
subplot(6,1,6);
plot(0:0.001:9.999,fsk);

