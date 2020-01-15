% Cria uma máscara com uma matriz 3x3 com valores 1/5 %
mask = ones(3,3)/5;

im1 = imread('../head.png');

% Aplica a máscara na imagem %
im2 = imfilter(im1, mask);

subplot(1,2,1); imshow(im1);
subplot(1,2,2); imshow(im2);