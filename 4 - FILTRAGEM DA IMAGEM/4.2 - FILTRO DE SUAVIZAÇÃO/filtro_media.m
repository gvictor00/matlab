im1 = imread('../../head.png');

% Aplica ruido sal e pimenta na imagem %
im2 = imnoise(im1, 'salt & pepper', 0.1);

% Máscara de média com matriz 5x5 %
mask1 = fspecial('average', [5 5]);
im3 = imfilter(im2, mask1);

% Máscara de média circular com raio 5 %
mask2 = fspecial('disk', 5);
im4 = imfilter(im2, mask2);




subplot(2,2,1); imshow(im1);
title('Original');

subplot(2,2,2); imshow(im2);
title('Ruído: Sal e pimenta');

subplot(2,2,3); imshow(im3);
title('Filtro: Média');

subplot(2,2,4); imshow(im4);
title('Filtro: Média Circular');