im = imread('../praca.jpg');

im_gray = rgb2gray(im);

% Rotaciona 45 graus com metódo bicubic %
degrees = 45;
im1 = imrotate(im_gray, degrees, 'bicubic');
im2 = imrotate(im_gray, degrees, 'bicubic', 'crop');

subplot(1,3,1);
imshow(im);
title('Original');

subplot(1,3,2);
imshow(im1);
title('45 graus sem crop');


subplot(1,3,3);
imshow(im2);
title('45 graus com crop');