% Carrega a imagem %
im = imread('praca.jpg');

% Transforma a imagem em tom de cinza %
im_gray = rgb2gray(im);

% Trasnforma os pixeis, maiores que 128, em branco %
im1 = im_gray > 128;

% Trasnforma os pixeis, entre dois valores, em branco %
im2 = im_gray > 128 & im_gray < 170;

subplot (1,3,1)
imshow(im);
title('Imagem original')

subplot (1,3,2)
imshow(im1);
title('Maior que 128')

subplot (1,3,3)
imshow(im2);
title('Entre 128 e 170')