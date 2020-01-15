% O filtro de mediana é ideal para remover ruídos do tipo
% impulsivo. Como, por exemplo, o filtro sal e pimenta.

% Lê a imagem %
im1 = imread('../../head.png');

% Aplica ruido sal e pimenta na imagem %
im2 = imnoise(im1, 'salt & pepper', 0.1);

% Filtro de mediana % 
im3 = medfilt2(im2, [3 3]);

subplot(1,3,1); imshow(im1);
title('Original');

subplot(1,3,2); imshow(im2);
title('Ruido: Sal e pimenta');

subplot(1,3,3); imshow(im3);
title('Filtro: Mediana');