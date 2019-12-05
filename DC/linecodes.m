clc;
clear all;
close all;

x = round(rand(1,10));
nx = length(x);
sign = 1;

for i=1:nx
    t = i:0.001:i+1-0.001;
    if x(i) == 1
        unipolar_nrz = square(t*2*pi,100);
        bipolar_nrz = square(t*2*pi,100);
        unipolar_rz = (1+square(t*2*pi,50))/2;
        polar_rz = (1+square(t*2*pi,50))/2;
        ami_rz = sign*(1+square(t*2*pi,50))/2;
        nrz_m = sign*square(t*2*pi,100);
        sign = sign*(-1);
        manchester = square(t*2*pi,50);
    else
        unipolar_nrz = 0;
        bipolar_nrz = -square(t*2*pi,100);
        unipolar_rz = 0;
        polar_rz = -(1+square(t*2*pi,50))/2;
        ami_rz = 0;
        manchester = -square(t*2*pi,50);
    end

    subplot(4,2,1);
    plot(t,unipolar_nrz);
    title('Unipolar NRZ');
    axis([1 10 -1.5 1.5]);

    subplot(4,2,2);
    plot(t,bipolar_nrz);
    title('Bipolar NRZ');
    axis([1 10 -1.5 1.5]);

    subplot(4,2,3);
    plot(t,unipolar_rz);
    title('Unipolar RZ');
    axis([1 10 -1.5 1.5]);

    subplot(4,2,4);
    plot(t,polar_rz);
    title('Polar RZ');
    axis([1 10 -1.5 1.5]);

    subplot(4,2,5);
    plot(t,ami_rz);
    title('AMI RZ');
    axis([1 10 -1.5 1.5]);

    subplot(4,2,6);
    plot(t,nrz_m);
    title('NRZ-M');
    axis([1 10 -1.5 1.5]);

    subplot(4,2,7);
    plot(t,manchester);
    title('Manchester');
    axis([1 10 -1.5 1.5]);
end
