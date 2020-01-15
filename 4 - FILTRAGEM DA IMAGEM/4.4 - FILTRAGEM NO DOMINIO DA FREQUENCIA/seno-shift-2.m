clc; clear all; close all;

nn = 1:500;
sen1 = 2*sin(nn/50);
sen2 = 7*sin(nn/20);
sen3 = 12*sin(nn/5);

sen_T = sen1 + sen2 + sen3;
Hseno = fft(sen_T);

subplot(2,1,1); plot(nn, Hseno);
subplot(2,1,2); plot(nn, fftshift(Hseno));

