im = imread('../../praca.jpg');
im_g = rgb2gray(im);

% Vetor que recebe o histograma %
[valor, bin] = imhist(im_g);

subplot(1,3,1);
imshow(im_g);

subplot(1,3,2);
bar(bin, valor);

subplot(1,3,3);
imhist(im_g);