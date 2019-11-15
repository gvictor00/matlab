# 1 - OPERAÇÕES PONTO A PONTO

Neste módulo foram aplicados os conceitos de transformação linear, transformação logarítmica e transformação exponencial. 

Para manipular a imagem no Matlab, é preciso fazer uma conversão para `uint8` e, para aumentar a precisão, utilizar os valores da matriz como `double`.  

## Exercício #1 - Transformadas

As transformações ficam da seguinte forma: 

```matlab
% Transformacao linear
im1 = uint8(c1 * double(im) + b);

% Transformacao logaritmica
im2 = uint8(c2 * log(double(im) + 1));

% Transformacao exponencial
im3 = uint8(c3 * exp(double(im)/255 + 1));
```

onde os valores de `c1, c2, c3`e `b` são constantes definidas arbitrariamente. 



## Exercício #2 - Negativando uma imagem

Para negativar uma imagem, é necessário inverter as cores. `B(x,y) = L - A(x,y)`, onde B é o valor do pixel invertido e os valores variam de 0 até 255 (0 = Branco e 255 = Preto). O código para negativar a imagem, no Matlab é:

```matlab
% Retorna o complemento da imagem
im_neg = imcomplement(im);
```

## Exercício #3 - Operações relacionais e lógicas

Consiste em combinar imagens através de operações relacionais e lógicas.

```matlab
% Trasnforma os pixeis, entre dois valores, em branco %
minVal = 128;
maxVal = 170;
im2 = im_gray > minVal & im_gray < maxVal;
```

Cria uma imagem binária para ser usada como máscara na construção de uma segundo imagem. Para, no fim, combinar as imagens resultantes em um novo arquivo.	

```matlab
%Cria imagem binária para usar como mascara%
mask1 = im_gray < 128;

% Multiplicação pixel a pixel por um fator da mascara, convertida para uint8
factor1 = 0.2;
im1 = factor1 * (im_gray .* uint8(mask1));
```

