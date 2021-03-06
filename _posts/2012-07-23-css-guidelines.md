---
layout: post
title: CSS советы и рекомендации
description: Данный документ является переводом первой версии рекоммендаций от @csswizardry
categories : [css]
---

**Дисклеймер:**  

<p>
    <small>
        <i>
Данный документ является переводом первой версии <a href="https://github.com/csswizardry/CSS-Guidelines">рекоммендаций</a> от <a href="http://csswizardry.com/">Гарри Робертса</a>. После публикации в перевод были внесены изменения для синхронизации с оригинальным репозиторием, из-за чего <a href="https://github.com/matmuchrapna/CSS-Guidelines">актуальную версию</a> перевода можно найти в моём аккаунте на гитхабе.
        </i>
    </small>
</p>

CSS советы и рекомендации
===============================================================================

В начале каждого CSS файла создаётся и поддерживается список содержимого документа, указывающий на разделы файла стилей. Название разделов имеет префикс из `$`, что означает поиск по фразе `$[раздел]` вернёт только блок относящийся к секции.

Синтаксис и форматирование
-------------------------------------------------------------------------------

Мы используем многострочную запись для улучшения последующей работы с системой контроля версий (выявление различий сделанных в одной строке — это тихий ужас), мы упорядочиваем логические свойства и селекторы по группам, а **не** по алфавиту.

Мы пишем селекторы в нижнем регистре и разделяем слова дефисом: `.thisIsBad {}`, `.this_is_also_bad {}` but `.this-is-correct {}`.

Всегда заканчивайте строку последнего правила в селекторе символом ';', чтобы избежать возможных конфликтов и синтаксических ошибок во время всего использования документа.

Для примера предпочитаемого форматирования и структуры CSS просто посмотрите файл [github.com/csswizardry/vanilla/&hellip;/style.css](http://github.com/csswizardry/vanilla/blob/master/css/style.css)

**К прочтению:**

* [coding.smashingmagazine.com/&hellip;/writing-css-for-others](http://coding.smashingmagazine.com/2011/08/26/writing-css-for-others)
* [jasoncale.com/&hellip;/5-dont-format-your-css-onto-one-line](http://jasoncale.com/articles/5-dont-format-your-css-onto-one-line)


Комментарии
-------------------------------------------------------------------------------

Комментируйте так много и так часто, насколько вы вообще можете это делать. Если это может понадобиться, то включите в комментарий блок кода разметки, помогающий понять в каком контексте находятся стили.

Будьте многословны, не стесняйтесь: CSS будет уменьшен при выкладывании на рабочий сервер.

Отступы
-------------------------------------------------------------------------------

Для каждого уровня вложенности разметки пытайтесь делать соответствующие отступы в стилях. Например: 

    .nav {}
        .nav li {}
            .nav a {}
            
    .promo {}
        .promo p {}

Также пишите вендорные префиксы так, чтобы значения были в одном столбике, то есть:

    -webkit-border-radius: 4px;
       -moz-border-radius: 4px;
            border-radius: 4px;

Это позволяет нам сразу увидеть, что все свойства установлены в `4px`, но что более важно — так это то, что если наш редактор поддерживает режим редактирования столбцов, то мы можем менять значение сразу во всей колонке значений в один момент.

Создание компонента
-------------------------------------------------------------------------------

При создании нового компонента пишите разметку **до того**, как напишите хоть одну строчку CSS. Это позволяет увидеть какие свойства наследовались и избежать повторного применения избыточных стилей.

OOCSS
-------------------------------------------------------------------------------

При создании компонента старайтесь не повторять себя, также не упускайте из виду принципы OOCSS.

Вместо того, чтобы плодить множество уникальных компонентов, попытайтесь распознать повторяющиеся шаблоны дизайна и создать из них абстракции; cверстайте эти абстракции, а затем используйте уточняющие классы для расширения их внешнего оформления.

Если вы вынуждены создать новый компонент, то разделите его на структуру и декоративное оформление; сверстайте структуру используя общие классы, тем самым давая возможность использования структуры компонента в других местах вашего проекта, и затем, используя более специфичные классы, оформите компонент в соответствии с требованиями дизайна.

**К прочтению:**

* [csswizardry.com/&hellip;/the-nav-abstraction](http://csswizardry.com/2011/09/the-nav-abstraction)
* [stubbornella.org/&hellip;/the-media-object-saves-hundreds-of-lines-of-code](http://stubbornella.org/content/2010/06/25/the-media-object-saves-hundreds-of-lines-of-code)


Раскладка
-------------------------------------------------------------------------------

Все компоненты должны быть полностью независимы от ширины; ваши компоненты должны оставаться резиновыми и их ширина должна контролироваться системой модульных сеток.

Высота **никогда** не должна назначаться элементам. Высота применяется только на сущности, имевшие размеры *до того*, как попали на сайт (например, картинки и спрайты). Никогда не устанавливайте высоту на `p`, `ul`, `div`, вообще что угодно. Вы можете добить желаемого эффекта с помощью гораздо более гибкого `line-height`.

Систему модульных сеток следует рассматривать, как структуру сайта. Вы создаёте структуру сайта, а затем наполняете её информацией.

Вы никогда не должны применять никаких стилей на ячейку сетки, так как они служат только целям разметки. Никогда, ни при каких обстоятельствах не применяйте свойства меняющие поведение `box-model` к ячейкам сетки.

Размеры
-------------------------------------------------------------------------------

Мы используем различные методы для задания размеров интерфейса: проценты, пиксели, `ems`, `rems` или вообще не задаем единицы измерения.

**К прочтению:**

* [csswizardry.com/&hellip;/measuring-and-sizing-uis-2011-style](http://csswizardry.com/2011/12/measuring-and-sizing-uis-2011-style)

Размеры текста
-------------------------------------------------------------------------------

Мы используем `rems` (c запасным решением с помошью пикселей только для старых браузеров). Категорически отказывайтесь от пикселей в `font-size` как это делают обычно. Мы определяем `line-height` без определения размерностей везде, **кроме** тех случаев когда позиционируем текст в заранее известной высоте.

Мы избегаем многоразового определения `font-size`; для достижения той же цели мы используем предопределённые размеры шрифтов разбитые по классам. Мы можем переделать оригинальные классы вместо определения `font-size` снова и снова.

Перед тем как задать элементу `font-size`, убедитесь что класс с заданным значением ещё не существует.

**К прочтению:**

* [csswizardry.com/&hellip;/pragmatic-practical-font-sizing-in-css](http://csswizardry.com/2012/02/pragmatic-practical-font-sizing-in-css)


Сокращённая запись
-------------------------------------------------------------------------------

Это может показаться заманчивым использовать правила похожие на `background: red;` но делая это, мы на самом деле говорим: «Я хочу, чтобы фоном была не одна картинка скролящуюся, спозиционированную вверх и влево и повторяющуюся по X и Y и чтобы цвет фона был красный». В девяти случаях из десяти это не высовет никаких проблем, но в 10% обязательно доставит достаточно неприятностей, чтобы не использовать сокращенные записи. Вместо этого используйте `background-color: red;`.

Например, ситуация с правилом `margin: 0;` — оно ясное и короткое, но черезчур **специфичное**. Если вы на самом деле хотите сделать отступ снизу от элемента, то гораздо более подходящим будет использовать `margin-bottom: 0;`.

Старайтесь сохранять чёткое представление о свойствах, которые вы устанавливаете и следите за тем, чтобы случайно не сбросить свойства других элементов, используя сокращенную запись. Например, если вы хотите сбросить нижний отступ, то нет никакой необходимости в агрессивном сбрасывании всех отступов с помощью `margin: 0;`.

Сокращённая запись сама по себе хороша, но легко используется неправильно.

Селекторы
-------------------------------------------------------------------------------

Сохраняйте селекторы эффективными, рациональными и переносимыми.

Тяжелые, глубоко вложенные селекторы никуда не годятся по ряду причин. Например возьмем `.sidebar h3 span {}`. Этот селектор основан на вложении и поэтому нет возможности переместить `span` из `h3` и из `.sidebar` — следовательно, нет возможности обеспечить поддержку стилей на должном уровне.

Слишком длинные селекторы также вызывают проблемы производительности; чем больше проверок в селекторе (например селекторе `.sidebar h3 span` имеет три проверки, а `.content ul p a` — четыре), тем больше работы выполняет браузер.

Старайтесь следить, чтобы ваши стили не зависели от вложенности, где это только возможно, а также что ваши селекторы были короткими и легко воспринимаемыеми.

**Запомните:** Классы на самом деле ни семантичны, ни не семантичны; Они применимы или нет! Перестаньте беспокоиться о «семантике» имён классов и выберите что-нибудь удобное в применении, с расчётом на дальнейшее использование.

**К прочтению:**

* [speakerdeck.com/&hellip;/breaking-good-habits](http://speakerdeck.com/u/csswizardry/p/breaking-good-habits)
* [csswizardry.com/&hellip;/writing-efficient-css-selectors](http://csswizardry.com/2011/09/writing-efficient-css-selectors)

Слишком специфичные селекторы
-------------------------------------------------------------------------------

Гиперспецифичный селектор это один из ряда `div.promo`. Скорее всего мы можем достичь тот же самый эффект, используя лишь `.promo`. Конечно, иногда мы *хотим* определить класс в зависимости от элемента (например, если у вас есть общий класс `.error`, который должен выглядеть по разному на разных элементах (например, `.error { color: red; }` `div.error { padding: 14px; }`)), но по возможности избегайте этого, где это только возможно.
 
Другим примером слишком специфичного селектора может быть `ul.nav li a {}`. Как описано выше мы сразу можем выкинуть `ul`, и так как мы знаем, что `.nav` это список, то ссылка будет вложена только в `li`, поэтому мы можем сократить `ul.nav li a {}` до `.nav a`.

Производительность
-------------------------------------------------------------------------------

Хоть это и правда, что браузеры только улучшают свои показатели в скорости рендеринга CSS, «Эффективность» — это то, на чём мы можем быть сфокусированы всегда. Короткие селекторы, неиспользование универсального (`* {}`) селектора и избегание больших комбинаций CSS3 селекторов должно помочь обойти проблемы производительности.

**К прочтению:**

* [csswizardry.com/…/writing-efficient-css-selectors](http://csswizardry.com/2011/09/writing-efficient-css-selectors)

## Будьте точны, не делайте обобщений и предположений

Вместо использования селекторов спускающихся по всему DOM-дереву, чаще удобнее добавить требуемому элементу класс. Давайте рассмотрим конкретный пример.

Представьте себе промо баннер с классом `.promo` с текстом внутри и ссылкой призывающей к действию (призывная, далее по тексту). Если будет только один `a` во всем `.promo` то можно стилизовать «призывную» ссылку с помощью `.promo a {}`.

Проблема станет очевидна так скоро, как вы добавите простую текстовую ссылку (или любую другую ссылку) в `.promo` контейнер; только что добавленная ссылка унаследует стили от «призывной» ссылки в независимости от того, хотите вы этого или нет. В этой ситуации будет лучше добавить точный класс (например `.cta` — аббр. от ‘call-to-action’) ссылке, которую вы хотите стилизовать.

Будьте точны, конкретны; указывайте именно тот элемент, который вам нужен, не его родитель. Никогда не предполагайте, что разметка будет неизменной.

Ключевой селектор никогда (как правило) не должен быть селектором тега или основным классом компонента/абстракции
-------------------------------------------------------------------------------

Вы никогда не должны обнаружить себя пишущим селектор, в котором ключевое значение имеет селектор по тегу (например, `.header ul {}`) или базовый компонент (например, `.header .nav {}`). Так как вы никогда не сможете гарантировать, что будет только один `ul` или один `.nav` в контейнере `.header`, ключевой селектор слишком расплывчатый.

Будет правильнее задать элементу класс, отвечающий на вопрос, что это за элемент — класс указывающий на него и только на него, итак `.header .nav {}` может быть заменен на `.site-nav`.

Единственное, когда селектор по тегу может быть востребован, это когда ситуация похожа на ту, что описана ниже:

    a {
        color:red;
    }
    .promo {
        background-color: red; 
        color: white;
    }
        .promo a {
            color: white;
        }

В данном случае вы *знаете*, что каждый `a` в `.promo` нуждается в пустом правиле, так как в противном случае будет нечитабельным.

**Пишите селекторы, указывающие на желаемые элементы, а не на те элементы, что уже оказались в разметке.**

## Идентификаторы (ID) и классы

Никогда не используйте ID в CSS, **абсолютно никогда**. Они могут быть использованы в вашей разметке, только для джаваскрипта или обозначения секций документа (fragment-identifiers). Для стилизации используйте только классы. Ни один ID не должен существовать в ваших стилях.

Классы предоставляют возможность повторного использования (даже если мы не хотим, но всё равно мы можем) и имеют низкую специфичность, что тоже очень удобно.

**К прочтению:**

* [csswizardry.com/&hellip;/when-using-ids-can-be-a-pain-in-the-class](http://csswizardry.com/2011/09/when-using-ids-can-be-a-pain-in-the-class)


## `!important`

Допустимо использовать `!important` только на вспомогательных классах. Превентивно добавлять `!important` удобно и полезно, например если вы знаете, что селектор `.error { color: red !important; }` всегда должен нуждаетсяв наибольшем приоритете.

Не приветствуется использование `!important` для исправления ошибок, например, чтобы помочь выбраться себе из ситуации с запутанной специфичностью. Переработайте ваш CSS и старайтесь избегать этих проблем рефакторингом ваших селекторов. Сохраняйте ваши селекторы короткими, откажитесь от ID — и ваша жизнь станет проще.

## Магические числа и абсолютные значения

Магическое число — число используемое лишь потому, что «это просто работает». Это порочная практика, так как очень редко она работает по какой-либо реальной причине и обычно достаточно недальновидна, негибка и причина самого числа вероятнее всего забудется. Магические числа устраняют симптомы, но не никак не влиют на проблему.

Например, использование правила `.dropdown-nav li:hover ul { top: 37px; }` для сдвига выпадающего пункта меню вниз при наведении на родителя `li` не принесёт ничего хорошего, так как 37px магическое число. 37px работает только потому, что в этом конретном сценарии (конкретный сайт в определённое время) меню оказалось высотой в 37px.

Вместо этого мы должны использовать `.dropdown-nav li:hover ul { top: 100%; }`, что означает без разницы какой высоты будет `dropdown-nav` меню, выпадающий пункт меню всегда будет сдвинут на 100% от верхней границы родителя.

Каждый раз, когда вы жестко задаёте число подумайте дважды; если вы можете избежать этого, используя ключевые слова или синонимы (например, `top: 100%` — сдвинуть на 100% от верха) или — даже лучше — не используя никаких элементов измерений, то вы должны избежать использования жестко заданного числа.

Каждое установленное вами числовое значение, скорее всего было необязательным.

## (Conditional stylesheets)

Использование файлов стилей по большому счёту можно избежать. Исключением может быть необходимость восполнить недостаточную поддержку (например, PNG с альфа–каналом в IE6).

Главное правило: вся разметка и `box-model` правила могут и *будут* работать без дополнительных файлов стилей, если вы отрефакторите ваш CSS. Это означает, что мы никогда не будем рады, если увидим `<!--[if IE 7]> element{ margin-left:-9px; } < ![endif]-->` или любой подобный CSS, используемый лишь для того, чтобы «заставить что-то работать правильно».

## Отладка

Если вы столкнулись с проблемой в CSS, то **удаляйте куски кода, до того как начать добавлять правила ещё** в попытке решить проблему. Проблема кроется в уже написанном CSS, написать ещё больше стилей — не самое верное решение!

Удаляйте куски разметки и стилей, пока проблема не исчезнет, затем определите в какую часть кода закралась проблема.

Это бывает достаточно удобно добавить `overflow: hidden;` на нужный элемент, чтобы избавиться от результатов кривой вёрстки, но `overflow` сам по себе никогда не был проблемой; **Исправляйте проблему, а не симптомы.**

## Препроцессоры

Следуя предыдущим советам, вы возможно обнаружите улетучивающуюся потребность в препроцессорах. Если вы всё ещё хотите их использовать, то учитывая всё, что было написано, используйте препроцессоры как дополнение к правилам, а не как альтернативу им.

Например, возможность вложенности часто приводит к гипер–специфичным и сильно вложенным селекторам. Давайте рассмотрим наш `. nav a {}` пример ещё раз:

    .nav {
        li {
            a {}
        }
    }

Скомпилируется в:

    .nav {}
    .nav li {}
    .nav li a {}

Хотя это и очень маленький пример, но он демонстрирует, что множество встроенных «полезных» фич препроцессоров работают против нас и наших идеалов; `.nav li a {}` может (и должно) быть `.nav a {}`.

Также, миксины и похожие них элементы, учат вас запоминать абстракции — что великолепно — но не учат необходимости использовать их правильно; нет никакой необходимости в абстактном миксине, если вы собираетесь использовать его тысячу раз в файле стилей.
    
Обязательно изучите все тонкости превосходного vanilla CSS и то, где препроцессор может способствовать их использованию, а не препятствовать или отменять их. Изучите недостатки препроцессоров изнутри и затем соедините лучшие стороны обоих, опустив худшие.
