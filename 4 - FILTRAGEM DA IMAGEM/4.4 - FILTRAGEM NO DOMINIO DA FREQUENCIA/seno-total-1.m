clc; clear all; close all;

nn = 1:500;
sen1 = 2*sin(nn/50);
sen2 = 7*sin(nn/20);
sen3 = 12*sin(nn/5);

sen_T = sen1 + sen2 + sen3;

subplot(4,1,1); plot(nn, sen1);
subplot(4,1,2); plot(nn, sen2);
subplot(4,1,3); plot(nn, sen3);
subplot(4,1,4); plot(nn, sen_T);