# 2 - TRANSFORMAÇÕES BÁSICAS

## Exercício #1 - Rotação

A função `imrotate` do matlab tem como objetivo rotacionar e, eventualmente, cortar a imagem de entrada.

```matlab
% Rotaciona 45 graus com metódo bicubic %
degrees = 45;
im1 = imrotate(im_gray, degrees, 'bicubic');
im2 = imrotate(im_gray, degrees, 'bicubic', 'crop');
```

Também é possível utilizar outros métodos de rotação. Os métodos disponíveis são:

* `nearest`
* `bilinear`
* `bicubic`