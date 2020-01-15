im1 = imread('../../rice.jpg');

% Máscara com filtro Laplaciano %
mask1 = fspecial('laplacian', 0.1);
im2 = imfilter(im1, mask1);

% Diferença entre as imagens obtidas
im3 = im1 - im2;

% Normaliza a imagem
im2 = double(im2);
im2 = im2/max(im2(:));

subplot(1,3,1); imshow(im1);
title('Original');
subplot(1,3,2); imshow(im2);
title('Destaque nas bordas'); 
subplot(1,3,3); imshow(im3);
title('Realçada');