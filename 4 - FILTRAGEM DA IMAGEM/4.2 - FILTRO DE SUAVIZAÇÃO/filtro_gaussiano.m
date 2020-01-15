im1 = imread('../../head.png');

% Aplica ruido sal e pimenta na imagem %
im2 = imnoise(im1, 'salt & pepper', 0.1);

% Máscara do filtro gaussiano %
mask1 = fspecial('gaussian', [5 5], 1.5);
im3 = imfilter(im2, mask1);

subplot(1,3,1); 
imshow(im1);
title('Original');

subplot(1,3,2);
imshow(im2);
title('Ruido: Sal e pimenta');

subplot(1,3,3);
imshow(im3);
title('Filtro: Gaussiano');