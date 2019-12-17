im = imread('../praca.jpg');
im_gray = rgb2gray(im);

% Usuário faz o recorte através da GUI.
% Seleciona o espaco e clica duas vezes.
im1 = imcrop(im_gray);

% Recorta em posicao fixa
im2 = imcrop(im_gray,[20 50 100 100]);

subplot(1,3,1);
imshow(im_gray);
title('Original');

subplot(1,3,2);
imshow(im1);
title('Usuario');

subplot(1,3,3);
imshow(im2);
title('[20 50 100 100]');
