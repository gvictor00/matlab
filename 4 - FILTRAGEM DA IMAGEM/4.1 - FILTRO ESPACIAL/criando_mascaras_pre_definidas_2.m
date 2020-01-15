im1 = imread('../../head.png');

% Máscara de média, com vetor 3x3 %
mask1 = fspecial('average', [3 3]);

% Máscara de média circular com raio 15 %
mask2 = fspecial('disk', 15);

im2 = imfilter(im1, mask1);
im3 = imfilter(im1, mask2);

subplot(1,3,1);
imshow(im1);
title('Original');

subplot(1,3,2); 
imshow(im2);
title('Média');

subplot(1,3,3); 
imshow(im3);
title('Média circular');


