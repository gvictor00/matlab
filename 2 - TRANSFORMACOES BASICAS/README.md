# 2 - TRANSFORMAÇÕES BÁSICAS

## Exercício #1 - Rotação

A função `imrotate` do matlab tem como objetivo rotacionar e, eventualmente, cortar a imagem de entrada.

```
im2 = imrotate(im1, angle)
im2 = imrotate(im1, angle, method)
im2 = imrotate(im1, angle, method, 'crop')
```

* `im1` é uma matriz que representa a imagem;
* `angle` é o valor, em graus, para a imagem ser rotacionada **no sentido anti-horário** a partir do seu centro;
* `method` é o método de interpolação utilizado na rotação. (`nearest`, `bilinear`, `bicubic`).

Exemplo:

```matlab
% Rotaciona 45 graus com metódo bicubic %
degrees = 45;

im1 = imrotate(im_gray, degrees, 'bicubic');
im2 = imrotate(im_gray, degrees, 'bicubic', 'crop');
```



## Exercício #2 - Escala

Transformações de escala alteram os valores geométricos da imagem, baseado em um fator positivo, alterando o tamanho dessa imagem.

A função imresize realiza mudanças na escala da imagem.

```
im2 = imresize(im1, factor)
im2 = imresize(im1, factor, method)
im2 = imresize(im1, [Nlin Ncol])
im2 = imresize(im1, [Nlin Ncol], method)
```

* `im1` é a matriz que representa a imagem;
* `factor` é o fator **positivo** utilizado para transformar a imagem valores `> 1` aumentam a imagem e valores  `0 < val < 1` diminuem a imagem;
* `method` representa o método de interpolação aplicado na escala;
* `[Nlin Ncol]` representa, respectivamente, o número de linhas e colunas que a imagem deve ter após a operação de escala.

