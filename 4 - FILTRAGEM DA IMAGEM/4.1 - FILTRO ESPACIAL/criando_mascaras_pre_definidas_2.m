im1 = imread('../../head.png');

% M�scara de m�dia, com vetor 3x3 %
mask1 = fspecial('average', [3 3]);

% M�scara de m�dia circular com raio 15 %
mask2 = fspecial('disk', 15);

im2 = imfilter(im1, mask1);
im3 = imfilter(im1, mask2);

subplot(1,3,1);
imshow(im1);
title('Original');

subplot(1,3,2); 
imshow(im2);
title('M�dia');

subplot(1,3,3); 
imshow(im3);
title('M�dia circular');


