im = imread('praca.jpg');

im_gray = rgb2gray(im);

%Cria imagem binária para usar como mascara%
mask1 = im_gray < 128;

% Multiplicação pixel a pixel por um fator da mascara, convertida para uint8
factor1 = 0.2;
im1 = factor1 * (im_gray .* uint8(mask1));

mask2 = im_gray >= 200;
factor2 = 0.3;
im2 = factor2 * (im_gray .* uint8(mask2));

% Combina as duas imagens %
im3 = im_gray + im1 - im2;

subplot(2,2,1);
imshow(im);
title('Imagem original');

subplot(2,2,2);
imshow(mask1);
title('Mascara 1');

subplot(2,2,3);
imshow(mask2);
title('Mascara 2');

subplot(2,2,4);
imshow(im3);
title('Final');