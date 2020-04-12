# CSS - Sass
> O Sass (Syntactically Awesome Style Sheets ou Folhas de Estilo Sintaticamente Impressionantes) é um dos pré-processadores mais utilizados em todo o mundo.

> O Sass é considerado, por seus autores, uma extensão do CSS3, porque permite trabalhar com aninhamento de regras, variáveis, mixins, herança de seletores, etc.
<p align="right">- TreinaWeb</p>

## Sobre o curso
Nesta pasta estão os arquivos desenvolvidos e produzidos durante o curso, entre eles o `dev/_my-styles2.scss` sendo um exemplo de partial, o `dev/my-styles.scss` com o papel principal contendo todo o código desenvolvido ao longo do curso, e o `dist/my-styles.css` sendo o resultado gerado (extendido) pelo gulp (kit de ferramentas para desenvolvimento Frontend).

## Desafios
**Aula 3**
```scss
$my-list: red green blue;
.my-class {
    color: mix(nth($my-list, 1), nth($my-list, 3));
}
```
---
**Aula 4**
```scss
@for $i from 1 through 5 {
    .btn-#{$i}{
        width: if($i<4, $i*100px, $i*110px);
    }
}
```
---
**Aula 5**
```scss
@mixin scW($min, $max) {
    @media (min-width: $min) and (max-width: $max) {
        @content;
    }
}
@mixin box($size) {
    width: $size;
    height: $size;
}

@include scW(320px, 790px) {
    .my-class {
        @include box(100px);
    }
}
```
---
**Aula 6**
```scss
%btn {
    padding: 10px 20px;
    min-width: 120px
}

.btn-generic {
    background-color: gray;
    @extend %btn;
}

.btn-confirm {
    background-color: green;
    @extend %btn;
}

.btn-cancel {
    background-color: red;
    @extend %btn;
}
```