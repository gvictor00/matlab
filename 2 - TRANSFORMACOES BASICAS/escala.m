im1 = imread('../praca.jpg');

im_gray = rgb2gray(im1);

im2 = imresize(im_gray, 0.05, 'bicubic');
im3 = imresize(im_gray, [200 200], 'bicubic');

subplot(1,3,1);
imshow(im_gray);
title('Original');

subplot(1,3,2);
imshow(im2);
title('Escala');

subplot(1,3,3);
imshow(im3);
title('200x200');
