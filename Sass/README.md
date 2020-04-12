<h1 align="center>CSS - Sass</h1>
<p align="center">“O Sass (Syntactically Awesome Style Sheets ou Folhas de Estilo Sintaticamente Impressionantes) é um dos pré-processadores mais utilizados em todo o mundo.  
O Sass é considerado, por seus autores, uma extensão do CSS3, porque permite trabalhar com aninhamento de regras, variáveis, mixins, herança de seletores, etc.”</p>
<p align="right">- TreinaWeb</p>

## Sobre o curso
Nesta pasta estão os arquivos desenvolvidos e produzidos durante o curso, entre eles o `dev/_my-styles2.scss` sendo um exemplo de partial, o `dev/my-styles.scss` com o papel principal contendo todo o código desenvolvido ao longo do curso, e o `dist/my-styles.css` sendo o resultado gerado (extendido) pelo gulp (kit de ferramentas para desenvolvimento Frontend).

## Desafios
**Aula 3**
Entrada (Sass)
```scss
$my-list: red green blue;
.my-class {
    color: mix(nth($my-list, 1), nth($my-list, 3));
}
```
Saída (compilado)
```css
.my-class {
  color: purple;
}
```
---
**Aula 4**
Entrada (Sass)
```scss
@for $i from 1 through 5 {
    .btn-#{$i}{
        width: if($i<4, $i*100px, $i*110px);
    }
}
```
Saída (compilado)
```css
.btn-1 {
  width: 100px;
}
.btn-2 {
  width: 200px;
}
.btn-3 {
  width: 300px;
}
.btn-4 {
  width: 440px;
}
.btn-5 {
  width: 550px;
}
```
---
**Aula 5**
Entrada (Sass)
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
Saída (compilado)
```css
@media (min-width: 320px) and (max-width: 790px) {
  .my-class {
    width: 100px;
    height: 100px;
  }
}
```
---
**Aula 6**
Entrada (Sass)
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
Saída (compilado)
```css
.btn-generic, .btn-confirm, .btn-cancel {
  padding: 10px 20px;
  min-width: 120px;
}

.btn-generic {
  background-color: gray;
}

.btn-confirm {
  background-color: green;
}

.btn-cancel {
  background-color: red;
}
```
