im1 = imread('../../rice.jpg');

% Unsharp Masking
% 1. Suaviza a imagem original
% 2. Subtrai a imagem suavizada da imagem original, gerando a máscara.
% 3. Soma a máscara a imagem original
%   g(x,y) = f(x,y) + k*mask(x,y)
%   K = 1 -> Unsharp Masking
%   K < 1 -> Reduz contribuição da máscara
%   K > 1 -> Filtragem, com ênfase. (High Boost)

% Passo 1
mask1 = fspecial('average', [3 3]);
im2 = imfilter(im1, mask1);

% Passo 2
mask2 = im1 - im2;

% Passo 3
factor = 1;
im3 = im1 + factor * mask2;

% Passo 3
factor = 3.5;
im4 = im1 + factor * mask2;

subplot(1,4,1); imshow(im1);
title('Original');
subplot(1,4,2); imshow(im2);
title('Suavizada');
subplot(1,4,3); imshow(im3);
title('Unsharp Mask');
subplot(1,4,4); imshow(im4);
title('High Boost');