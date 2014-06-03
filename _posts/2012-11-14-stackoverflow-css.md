---
layout: post
title: Мои интересные CSS ответы на Stackoverflow
description: Собрание интересных собственных ответов на Stackoverflow
categories : [css]
---


Мои интересные #CSS ответы на Stackoverflow
==================================================

* * * 

## [Как сделать блок в виде трапеции с помощью CSS?](http://stackoverflow.com/a/10881807/1057730) ##

![css trapezium](http://img135.imageshack.us/img135/9683/eedea21cb3bc438fb33c80c.png)  
<a href="http://dabblet.com/gist/2868194" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

Очень простой пример, два псевдо-элемента наклонённые с помощью `transform: skew(25deg)`; в другую сторону псевдо-элемент наклоняется отрицательным углом `skew(-25deg)`.


* * * 

## [Как заставить `textarea` растянуться на всю ширину ячейки?](http://stackoverflow.com/a/10943721/1057730) ##

<a href="http://dabblet.com/gist/2893830" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

Так как `box-model` у всех элементов формы не стандартные, то они имеют ограниченную ширину. Но если назначить `width: 100%;`, то внутренние отступы созданные для человечности, растянут `textarea` шире чем ячейка, поэтому приходится назначать `box-sizing: border-box`

* * * 

## [Как пропорционально уменьшить картинку в процентном отношении от собственных размеров картинки а не от размеров родителя?](http://stackoverflow.com/a/10752040/1057730) ##

<a href="http://jsfiddle.net/matmuchrapna/JH4B2/2/embedded/result/" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

 — Первый способ банален: `scale: .5`

<a href="http://jsfiddle.net/matmuchrapna/dhcDx/23/embedded/result/" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

Второй способ более изобретателен. 

    #wrap {
        overflow: hidden; /* заставляет контейнер, принять размеры оригинальной картинки */
    }
    #wrap img.fake {
        /* Прячем оригинальную картинку, но без `display: none;` */
        float: left;
        visibility: hidden;
        width: auto;
    }
    #img_wrap img.normal {
        width: 50%; // так как контейнер, принял размеры оригинальной картинки, то width: 50%, создаст размеры этой картинки, относительно оригинальной
    }


* * * 

## [Как сделать резиновую кнопку с острым углом с внутреней и внешней тенью](http://stackoverflow.com/a/10728681/1057730) ##
![css button](http://img832.imageshack.us/img832/8258/664d7b5656434db68cbee8b.png)  
<a href="http://dabblet.com/gist/2777220" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

![css button flex](http://i.stack.imgur.com/Huy3r.png)  
<a href="http://dabblet.com/gist/2782854" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо резиновой кнопки</a>

Кнопка делается в шесть шагов:

1. Создайте элемент '.triangle' - он будет обёрткой для настоящего треугольника
2. Назначьте этому элменту `position: absolute;`, Зафиксируйте `width` и `height`:  
Красный цвет, только для демонстрации 
![step 4][5]
3. Создайте большой квадратый элемент '.triangle::before' — он станет настоящим треугольником после 6 шага
4. Поверните .triangle::before' на 45 градусов (`transform: rotate(45deg)`).
5. Добавьте внутренних теней.  
Результат уже похож, на то, что нам нужно.  
![step3][6]
6. Добавьте `overflow: hidden;` к обёртке треугольника  ***Та-дам!***  
![step 5][7]

На внутреннем треугольнике `.tag_inner` повторяется тот же трюк, но `box-shadow` должна уже быть обычной.

* * * 

## [Как сделать блок прозрачным, без создания того же эффекта для вложенных элементов?](http://stackoverflow.com/a/10879439/1057730) ##

![css rgba](http://i.stack.imgur.com/9luI6.png)  
<a href="http://dabblet.com/gist/2867543" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

Так как `opacity: .2` назначать было нельзя, так как не нужен был эффект на вложенных элементах. Также не получается использовать `background: rgba(0, 0, 0, .5)` для полупрозрачного цвета в качестве фона, так как вопрошающий спрашивает о фоновой картинке. Единственное, что остаётся так это, использовать абсолютно спозицинированный псевдо-элемент с `opacity: 0.2` и нужно фоновой картинкой.

* * * 

## [Как изменить высоту букв не меняя `font-size`?](http://stackoverflow.com/a/11010816/1057730) ##

![css scale without font-size](http://i.stack.imgur.com/CzPN0.png)  
<a href="http://dabblet.com/gist/2922712" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

Несмотря на всю абсурдность вопроса и мнимую невыполнимость. Решается задача с помощью простеёших `scaleY(0.9)`.

* * * 

## Как менять размера текста в зависимости от разрешения? [**1**](http://stackoverflow.com/a/11012843/1057730), [**2**](http://stackoverflow.com/a/10561812/1057730), [**3**](http://stackoverflow.com/a/11010015/1057730) ##

<a href="http://jsfiddle.net/matmuchrapna/2tQ5T/1/embedded/result/" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

В этом вопросе, есть все предпоссылки к адаптивной типографике.

    html { font-size: 62.5%; }
    body { font-size: 1em;}

    @media (max-width: 300px) {
        html { font-size: 70%; }
    }

    @media (min-width: 500px) {
        html { font-size: 80%; }
    }

    @media (min-width: 700px) {
        html { font-size: 120%; }
    }

    @media (min-width: 1200px) {
        html { font-size: 200%; }
    }

Весь трюк в относительных единицах измерения размера текста — `em`. Но конструкция из вложенных элементов, создаёт очень сложную ситуацию для поддержки этого типографского решения, ввиду того, что размеры текста задаются относительно родительского элемента — и в конце концов, у каждого разработчика появляются ужасные дроби в стилях. Спустя какое-то время я узнал про [способ](http://snook.ca/archives/html_and_css/font-size-with-rem) задания `font-size` через `rem` — тоже относительные, но относительно корневого значения  `font-size`. То есть примерно так:

    html { font-size: 62.5%; }
    body { font-size: 1em;}

    .lead {
        font-size: 14px; // фоллбек для IE8-
        font-size: 1.4rem;
    }



* * * 

## [Смена цвета меню по диагонали](http://stackoverflow.com/a/11668250/1057730) ##

![css diagonal inverse gradient](http://i.stack.imgur.com/taSvG.png)  
![css diagonal inverse gradient](http://i.stack.imgur.com/MqL6V.png)  
<a href="http://dabblet.com/gist/3181530" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

Главный трюк этого ответа заключается в строчках:

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;

Они позволяют контейнеру передать свой фон тексту внутри него и ограничить этот фон областью текста.

После осознания приёма, становится всё очень просто.

* Делаем области страницы и меню одинаковыми по площади
* Создаём наклонный градиент для фона, и повторяем его инвертированную копию для меню.
* Та-дам!

* * * 

## [Чем лучше сортировать свой CSS код?](http://stackoverflow.com/a/11575367/1057730) ##

![CSScomb](http://i.imgur.com/3uA59.png)

Дань признательности и уважения [Славе Олиянчуку](https://twitter.com/miripiruni) за его инструмент [CSScomb](http://csscomb.ru/).

* * * 

## [Абсолютное позиционирование относительно соседнего элемента?](http://stackoverflow.com/a/10625051/1057730) ##

Люблю такие вопросы, так как для того, чтобы ответить на них приходится искать относящиеся к вопросу разделы спецификации и стараться интерпретировать в свете вопроса. Не зря я хотел [распечатать спецификации](/specs/).

* * * 

## [Можно ли сделать блок семантичными вкладками?](http://stackoverflow.com/a/10914126/1057730) ##

<a href="http://dabblet.com/gist/2881519" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

Это решение уже много раз обсуждалось, и мне кажется кроме **pureCSS** и доступности имеет очень много ограничений на использование, так как идеально подходит для вкладок с фиксированным по размерам контейнером для контента, а для всего остального — с натяжкой.

* * * 

## Как вертикально и горизонтально отцентровать блок? [**1**](http://stackoverflow.com/a/10926196/1057730), [**2**](http://stackoverflow.com/a/13356401/1057730), [**3**](http://stackoverflow.com/a/10896125/1057730), [**4**](http://stackoverflow.com/a/10903221/1057730) ##

Все мы пользуемся `.wrap {width: 960px; margin: 0 auto;}`. Это позволяет браузеру создать равномерный горизонтальный отступ с каждой из сторон и контейнер получается отцентрированным по горизонтали; этот же трюк можно использовать и для вертикальной позиционирования.

Главный трюк в том, что в нормальный поток обычных элементов направлен сверху вниз, поэтому `margin-top: auto` установлено в ноль. Абсолютно спозиционированные элементы, получают возможность распределять свободное пространство в всех направлениях.

    .div {  
        width: 100px;  // может быть 
        height: 100px; //           любым числом
    
        position: absolute; // абсолютное позиционирование
        top:0;     // удаление отступов
        right: 0;  // удаление отступов
        bottom: 0; // удаление отступов
        left: 0;   // удаление отступов
    
        margin: auto; // включение равномерного распределения свободного 
                      // пространства между границами контейнера и блока
    }

* * * 

## [Возможно ли написать стили для `fieldset` идущим прямо за другим `filedset`?](http://stackoverflow.com/a/11018219/1057730) ##

<a href="http://dabblet.com/gist/2924668" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

Очередное обращение к спецификации, как к доверенному [источнику по селекторам](http://www.w3.org/TR/CSS2/selector.html#pattern-matching). В данном демо раскрывается потенциал селекторов `+` и `~`.


* * * 

## [Как подсветить блок, если нажата ссылка, ведущая на него](http://stackoverflow.com/a/11027348/1057730) ##

<a href="http://dabblet.com/gist/2928193" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

Введение в селектор `:target` и CSS анимации.


* * * 

## Как заставить `input` растянуться на 100% от ширины родителя? [**1**](http://stackoverflow.com/a/11238490/1057730), [**2**](http://stackoverflow.com/a/11238699/1057730) ##

<a href="http://jsfiddle.net/matmuchrapna/uaKZn/1/embedded/result/" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

Лучший способ выполнить поставленную задачу с поддержкой IE7.

* * * 


## [Хром игнорирует `border-radius` если дочерние элементы имеют относительное позиционирование](http://stackoverflow.com/a/10100763/1057730) ##

Немножко евангелизма. Как оказалось главная проблема автора вопроса была в том, что он использовал неправильный порядок префиксов.  
Такой порядок правильный:

    -webkit-property: value;
       -moz-property: value;
        -ms-property: value;
         -o-property: value;
            property: value;

* * * 

## [Создание внутренней рамки](http://stackoverflow.com/a/10548418/1057730) ##

![double inset box-shadow css](http://i.stack.imgur.com/78sls.png)
<a href="http://dabblet.com/gist/2658508" data-toggle="modal" data-target="#iframe-modal">Посмотреть демо</a>

Все остальные волонтёры предлагали использовать вложенные элементы. Хотя можно спокойно обойтись двойной внутренней тенью:

    box-shadow:
            0 0 0  9px  #ffd28a inset,
            0 0 0 11px  #FFFFFF inset;
