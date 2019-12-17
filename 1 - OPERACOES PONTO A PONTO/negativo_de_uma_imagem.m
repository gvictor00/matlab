% Le a imagem
im = imread('../praca.jpg');

% Retorna o complemento da imagem
im_neg = imcomplement(im);

% Exibe a imagem negativada
% imshow(im_neg);

% Exibe as imagens lado a lado
subplot(1,2,1);
imshow(im);
title('Imagem original');

subplot(1,2,2);
imshow(im_neg);
title('Imagem negativa');