im = imread('../../praca.jpg');
im_g = rgb2gray(im);

% Caso seja colorida, tem de fazer nos três canais.
im1 = histeq(im_g);

subplot(2,2,1);
imshow(im_g);
subplot(2,2,2);
imshow(im1);
subplot(2,2,3);
imhist(im_g);
subplot(2,2,4);
imhist(im1);