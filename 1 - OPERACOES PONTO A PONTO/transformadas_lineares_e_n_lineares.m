% Le a imagem
im = imread('../praca.jpg');

% Transformacao linear
c1 = 2;
b = 30;

% Eh necessario converter a imagem para uma matriz de double
% Aplica uma transformacao linear
im1 = uint8(c1* double(im) + b);

% Transformacao logaritmica
c2 = 30;
im2 = uint8(c2 * log(double(im) + 1));

% Tranformacao exponencial
c3 = 30;
im3 = uint8(c3 * exp(double(im)/255 + 1));

subplot(2,2,1);
imshow(im);

subplot(2,2,2);
imshow(im1);

subplot(2,2,3);
imshow(im2);

subplot(2,2,4);
imshow(im3);