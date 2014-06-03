---
layout: post
title: Sublime Text и плагины к нему
description: Я начал пользоваться [Sublime Text][1] около года назад. Этот редактор бесподобен и этот текст пишу сейчас именно в нём. Статья как раз об этом редакторе
categories : [workspace]
---

Sublime Text и плагины к нему
============================================================

Я начал пользоваться [Sublime Text][1] около года назад. Этот редактор
бесподобен и этот текст пишу сейчас именно в нём. Я хочу дать новичкам
материалы для ознакомления и инструкции по началу работы, а для тех, кто уже
пользуется, хочу рассказать про плагины, которыми я пользуюсь.

Бонусы Саблайма:

* Скорость работы
* Минималистичный интерфейс — ничего лишнего
* Режим «усиленной концентрации» — совсем ничего лишнего
* Графическая карта файла — удобная идея навигации по файлу
* Нечёткий поиск
* Гибкая настройка под себя без графического интерфейса
* Мощное, развитое сообщество плагинов, обеспеченное первоначальником
Package Control (1000+ плагинов от 800+ авторов)
* Мультикурсор — редактирование стоблцов текста и не только
* Продуманные хоткеи
* Таб-группы — возможностью разделить экран на несколько частей
* Возможность одновременно редактировать один и тот же файл в разных табах.

Почти все бонусы можно будет увидеть в видеокурсе, о нём ниже.

## Установка, настройка, система плагинов ##

Первым делом при работе с Sublime Text установите [Package Control][2], через
него тему «[Soda Theme][5]» (в настройках:
`"theme":"Soda Dark.sublime-theme"`), после этого для баланса с темой нужно
настроить [цветовую схему][7]: из репозитория Soda Theme скачайте отдельный
архив [colour-schemes.zip][8] и перенесите из него соответствующий файл в
папку с `./Packages/User/` затем вы можете вписать в пользовательский файл
настроек: `"color_scheme": "Packages/User/Monokai Soda.tmTheme"`, и не
забудьте вписать в настройки шрифт [Meslo][6].

O философии настроек Саблайма: «Если у вас уже есть текстовый редактор, то зачем
увеличивать энтропию и сложность проекта, создавая графический интерфейс, если
настройки можно хранить в удобочитаемом формате и редактировать в самом
редакторе?» Мне кажется, что Джон Скиннер думал именно так, когда проектировал
свой редактор, и я с ним полностью согласен. Важно понимать, что есть дефолтные
настройки и пользовательские (в меню `Preferences → Settings Default` и
`Preferences → Settings User`): первые — это стандартные для редактора настройки
с кучей поясняющих комментариев, которые сбрасываются обновлении, все свои
настройки нужно хранить в пользовательских файлах. В самом начале я скопировал
все стандартные настройки в пользовательский файл и попробовал каждую опцию, тем
самым я понял на что способен мой редактор из коробки, и это важно, так как ты
должен *знать свои инструменты*.

Теперь я хочу рассказать о некоторых особеностях Package control. Это не только
способ устанавливать плагины прямо из редактора, но ещё и большой их список,
доступный на [сайте][9] [Уилла Бонда][10]. На этой странице вы всегда сможете
найти нужный вам плагин, тему, сниппеты или подсветку нового языка через поле
поиска.

После того, как вы решили использовать Sublime Text обязательно просмотрите все
плагины на рабочие для вас темы — скорее всего уже будет удобный инструмент для
работы в вашей области. Также вы **не пропустите ни одного нового плагина
подписавшись на [RSS][11]** этой страницы. Ещё мало кто знает, но можно
устанавливать даже те плагины, которых нет в общем канале, для этого есть опция
`Package Control: Add Repository`: и вы сможете добавить GitHub или BitBucket
репозиторий, после добавления, вы сможете установить существующий там плагин по
стандартной схеме.

## Дальнейшее знакомство ##

После этого небольшого ознакомления, я настоятельно рекомендую прочитать
прошлогоднюю статью «[Sublime Text 2 Трюки и заметки (Обновлено)][3]» и
посмотреть видеокурс **«[Идеальный рабочий процесс в Sublime Text 2][4]»** от
Джеффри Уэя. Из этих двух источников вы подчерпнёте для себя очень много нового
и полезного в Саблайме — в общем статья и как видеокурс не очень большие,
поэтому найдите время посмотреть и то и другое.

## Хоткеи ##

Изучите их и настройте под себя. Это сделает вашу жизнь легче.
 
## Плагины ##

Это плагины, которые остались в использовании после просмотра всего, чем я
пользовался ещё недавно.

* [**Package Control**][2] (работает в 3 версии редактора).
* [**Soda Theme**][5] (работает в 3 версии редактора) — качественная тема вместе с
модифицированной цветовой схемой; существует в тёмной и светлой версии.
* [Advanced New File][12] (работает в 3 версии редактора) — в два раза уменьшает
проблему и время на создание новых файлов.
* [Auto Filename][13] — позволит не вспоминать полные названия файлов, когда вы
будете их подключать.
* [**Sublime Linter**][14] (работает в 3 версии редактора, отдельная ветка на
гитхабе) — это **мана небесная!**  
Инструмент c большим количеством настроек для CSS (JS поменьше), который
в реальном времени проверяет код на опечатки, недочёты, ошибки и
подсвечивает ошибку прямо в файле, попутно объясняя «почему» в статус-баре;
вообще спасает много времени на дебаге. Для CSS требует nodejs.
* [**Emmet**][15] (работает в 3 версии редактора, [читайте пост в оффициальном
блоге][16]) — приемник *Zen Coding*; в общем, если вы пишете HTML код руками,
и не знаете обеих аббревиатур, то в прошлом вы потратили слишком много времени
зря. Самое важное, это возможность раскрыть `.wrap>.inner` в `<div class="wrap">
<div class="inner"></div></div>` или, допустим, обернуть список меню (• Главная,
• О нас, • Цены, • Контакты) конструкцией `nav>ul>li*>a[href="#"]`. Также важно,
что в `emmet` появилась возможность менять числовые значения, как в Developer
Tools, с помощью клавиш вверх и вниз в паре с дополнительными клавишами
(`ctrl+↑|↓` — ±1, `alt+shift+↑|↓` — ±10, `alt+↑|↓` — ±0.1).
* [Bracket Highlighter][17] — подсвечивает теги и скобки; иногда помогает.
* [**DocBlockr**][18] (работает в 3 версии редактора) — Все любят документацию,
но никто не любит её писать, для этого изобрели инлайлоновую документацию и
этот плагин поможет вам писать её комфортно и быстро.
* [FileDiffs][19] — отличается от GitGutter тем, что позволяет видеть диффы
любых файлов, а не только диффы между коммитами; да и появился он раньше,
намного раньше GitGutter.
* [**GoldenRatio**][20] (работает в 3 версии редактора) — стандартное разбиение
на две панели табов создаёт их равными друг другу, а на маленьких мониторах это
решение не позволяет полноценно следить за обеми панелями. Этот плагин
позволяет увеличивать активную панель при получении ею фокуса. Настройки такие:
`{ "auto_resize": true, "golden_ratio": 1.618 }`.  
[![][21]][21]  
[![][22]][22]
* [**MarkdownEditing**][23] при должных настройках хоткеев превращает Саблайм в
полноценный Маркдаун редактор.
* [MarkdownBuild][24] — компилирует по хоткею маркдаун в HTML и сразу показывает
в браузере.
* [Prefixr][25] — ты пишешь `box-sizing: border-box;`, нажимаешь `alt+ctrl+x`
и Prefixr добавляет все актуальные префиксы.
* [ToggleQuotes][26] — простейшая смена двойных кавычек на одинарные и в
другую сторону.
* [WordCount][27] (работает в 3 версии редактора) показывает список слов,
символов в статус-баре, удобно для написания и редактирования статей.
* [WordHighlight][28] (работает в 3 версии редактора) подсвечивает все копии
выделенного слова, позволяет проверять не опечатался ли в названии переменной.

В самое разное время, мне пригождались (но не сейчас) такие плагины как:
[Alternative Autocompletion][29], [AngularJS][30], [Bullet][31] (удалил после
MarkdownEditing), [CSScomb][32] (мегакрутая вещь; жаль, что бесполезна для меня
пока она на PHP), EncodingHelper (умер), [Goto-CSS-Decalaration][33],
[Hayaku][34], [HTML5][35] сниппеты, [HTMLAttributes][36], [Inc-Dec-Value][37],
IndentGuides (умер), [jQuery][38] и [jQuery Snippets Pack][39],
[Nettuts+ Fetch][40], [Open-Include][41], [Package DeControl][42],
[SideBarEnhancements][43], [Stylus][44], [SublimeCodeIntel][45], [Tag][46],
[Tortoise][47].



[1]: http://sublimetext.com/ "Sublime Text 2"
[2]: http://wbond.net/sublime_packages/package_control "Sublime Package Control"
[3]: http://net.tutsplus.com/tutorials/tools-and-tips/sublime-text-2-tips-and-tricks/ "Sublime Text 2 Tips and Tricks (Updated)"
[4]: https://tutsplus.com/course/improve-workflow-in-sublime-text-2/ "Perfect Workflow in Sublime Text 2"
[5]: https://github.com/buymeasoda/soda-theme "Dark and light custom UI themes for Sublime Text 2"
[6]: /meslo/ "Meslo"
[7]: https://github.com/buymeasoda/soda-theme#syntax-highlighting-colour-schemes "Soda Theme — Syntax Highlighting Colour Schemes"
[8]: http://buymeasoda.github.com/soda-theme/extras/colour-schemes.zip "Archive of *.tmtheme files"
[9]: http://wbond.net/sublime_packages/community "Sublime Text Packages"
[10]: http://wbond.net/ "Will Bond"
[11]: http://wbond.net/sublime_packages/community/rss "Newest Sublime Text Packages"
[12]: https://github.com/skuroda/Sublime-AdvancedNewFile "Advanced New File"
[13]: https://github.com/BoundInCode/AutoFileName "AutoFileName"
[14]: https://github.com/SublimeLinter/SublimeLinter "Sublime Linter"
[15]: https://github.com/sergeche/emmet-sublime/ "Emmet for Sublime Text 2"
[16]: http://emmet.io/blog/sublime-text-3/ "Sublime Text 3 support"
[17]: https://github.com/facelessuser/BracketHighlighter "Bracket and tag highlighter for Sublime Text 2"
[18]: https://github.com/spadgos/sublime-jsdocs "Simplifies writing DocBlock comments in Javascript, PHP, CoffeeScript, Actionscript, C & C++"
[19]: https://github.com/spape/SublimeFileDiffs "Shows diffs - also in an external diff tool - between the current file, or selection(s) in the current file, and clipboard, another file, or unsaved changes."
[20]: https://github.com/roadhump/GoldenRatio "Sublime Text 2 plugin to resize current group by golden ratio"
[21]: http://img171.imageshack.us/img171/9758/f77f8a97a18b4c09b06c05c.png "Sublime GoldenRation demonstration #1"
[22]: http://img856.imageshack.us/img856/2333/03ed66dd17df4a3c9fe8462.png "Sublime GoldenRation demonstration #2"
[23]: https://github.com/ttscoff/MarkdownEditing "MarkdownEditing"
[24]: https://github.com/erinata/SublimeMarkdownBuild " Sublime Text plugin for building markdown into html and view it in browser"
[25]: http://wbond.net/sublime_packages/prefixr "A Sublime Text 2 plugin to run CSS through the Prefixr API."
[26]: https://github.com/spadgos/sublime-ToggleQuotes "ST2 Plugin for toggling quote marks "
[27]: https://github.com/SublimeText/WordCount "Real time Word Counter"
[28]: https://github.com/SublimeText/WordHighlight "Highlight all copies of the currently selected word"
[29]: https://github.com/alexstaubo/sublime_text_alternative_autocompletion "Adds TextMate-like autocompletion to Sublime Text 2"
[30]: http://deansofer.com/projects/view/74/AngularJs_tmbundle "AngularJs.tmbundle"
[31]: https://github.com/erinata/SublimeBullet "Sublime Text plugin for markdown style Bullet points and Number lists"
[32]: http://csscomb.com/ "The Greatest tool for sorting CSS properties in specific order"
[33]: https://github.com/rmaksim/Sublime-Text-2-Goto-CSS-Declaration "Goto CSS declaration in an open *.css file"
[34]: http://hayakubundle.com/ "Hayaku - tools for writing CSS faster"
[35]: https://github.com/mrmartineau/HTML5 "HTML5 bundle for Sublime Text 2"
[36]: https://github.com/agibsonsw/HTMLAttributes "HTML(5) attribute completions"
[37]: https://github.com/rmaksim/Sublime-Text-2-Inc-Dec-Value "increase / decrease of numbers, dates, hex color values, etc."
[38]: https://github.com/SublimeText/jQuery "Sublime Text 2 package bundle for jQuery"
[39]: https://github.com/aaronpowell/sublime-jquery-snippets "Code snippets for developing with jQuery"
[40]: http://net.tutsplus.com/articles/news/introducing-nettuts-fetch/ "Automatically pull in the latest copy of a file"
[41]: https://github.com/SublimeText/Open-Include "Will open file paths found under the cursor with ALT+D"
[42]: https://github.com/jfromaniello/Sublime-Package-Decontrol "Like Sublime Package Control but without a central repository"
[43]: https://github.com/titoBouzout/SideBarEnhancements "Enhancements to Sublime Text sidebar. Files and folders"
[44]: https://github.com/billymoon/Stylus "Stylus Package for Sublime Editor 2"
[45]: https://github.com/Kronuz/SublimeCodeIntel "Full-featured code intelligence and smart autocomplete engine"
[46]: https://github.com/SublimeText/Tag "Collection of packages about HTML/XML tags"
[47]: http://wbond.net/sublime_packages/tortoise "TortoiseSVN, TortoiseGit and TortoiseHg integration with Sublime Text 2 via menus and keyboard shortcuts"
