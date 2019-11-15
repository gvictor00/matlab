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

Por exemplo:

```matlab
im2 = imresize(im_gray, 0.05, 'bicubic');
im3 = imresize(im_gray, [200 200], 'bicubic');
```



## Exercício #3 - Recorte

A operação de recorte consiste apenas em selecionar uma região de uma imagem para compor outra.

```matlab
im2 = imcrop(im1) % Usuário seleciona espaço do corte através do mouse
im2 = imcrop(im1, [X Y L A]) % Coluna inicial, linha inicial, largura e altura
```

Para utilizar a `imcrop` sem passar as posições de corte, o usuário precisa selecionar o espaço a ser cortado. Dessa forma, será necessário escolher, através do **mouse** o espaço e depois **clicar duas vezes** dentro dessa região.

Por exemplo:

```matlab
% Usuário faz o recorte através da GUI
im1 = imcrop(im_gray);

% Recorta em janela predefinida
im2 = imcrop(im_gray,[20 50 100 100]);
```

