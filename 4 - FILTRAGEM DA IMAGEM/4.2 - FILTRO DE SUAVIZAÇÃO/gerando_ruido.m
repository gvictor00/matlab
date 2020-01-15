im1 = imread('../../head.png');

% Aplica ruido sal e pimenta na imagem %
im2 = imnoise(im1, 'salt & pepper', 0.1);

% Aplica ruido gaussiano na imagem %
im3 = imnoise(im1, 'gaussian', 0, 0.01);

subplot(1,3,1); 
imshow(im1);
title('Original');

subplot(1,3,2);
imshow(im2);
title('Sal e pimenta');

subplot(1,3,3);
imshow(im3);
title('Gaussiano');