---
layout: post
title: Рабочее окружение Windows
isNotTranslated: true
categories : [workspace]
---

Рабочее окружение Windows
================================================================================

После необходимости настраивать рабочее пространство на новом рабочем месте, я
решил законспектировать настройки окружения и десктопные иструменты для
фронтенд разработчика.

## Настройки окружения ##

* [ДрайверПак][17] установит все драйвера в автоматическом режиме и будет сам
следить за их актуальным состоянием;
* [Аваст][3] — много раз выручавший меня бесплатный антивирус;
* [Дропбокс][18] — храните все наработки и файлы настроек в облаке и вы ещё
не раз скажете самому себе огромное спасибо;
* [АйЛео][19] спасёт ваши глаза и тело от переутомления. Единственная достойная
программа подобного назначения с приличным графическим и интерфейсным
исполнением;
* [ЛайтШот][23] поможет поделиться снимком экрана с колегами или читателями в
твиттере;
* [Типографская раскладка Бирмана][25] позволит использовать правильные
типографские символы: неразрывный пробел, длинное тире, правильные русские,
британские и американские кавычки, знаки копирайта и градуса по цельсию. *Тут
важно отметить*, что язык и раскладка это разные сущности в понимании Виндоус
системы и после установки раскладки Бирмана, у вас будет **два языка и по две
раскладки в каждом** — четыре возможных комбинации, и в половине из них не будет
работать спец. символы, поэтому **после установки типографской раскладки удалите
стандартные раскладки**, чтобы спец. символы работали всегда;
* [ПунтоСвитчер][26] экономит много времени на переключении раскладки по
капслоку.

А также [Picasa][20], [2Gis][15], [Skype][16], [7-zip][21] и [BitTorrent][22].


## Инструменты разработки ##

* [Meslo][1] — [самый крутой моноширинный шрифт][2] для терминалов и редакторов;
* [Google Chrome][7] — простота, встроенные инструменты разработки и
синхронизация настроек не оставляют мне выбора; для разработки лучше
использовать [дев ветку][8]. На странице списка разных версий хорошо
объяснено, [как работает][9] эта система;
* [Vmware player][4] — оболочка для виртуальных машин для экспериментов с
FreeBSD;
* [HeidiSQL][14] — интерфейсная оболочка для доступа к базам данных, если знаний
SQL стало нехватать для эффективной работы в обычном терминале;
* [Xshell 4][5] — оболочка для ssh терминалов, чтобы пользоваться всеми
виртуалками в разных табах, но в пределах одного окна;
* [Console 2][13] — оболочка для локальных терминалов — cmd, git bash с
поддержкой табов;
* [Total Commander][6] — самый удобный файловый менеджер; точно удобнее, чем
одиночные окна обычного windows explorer; мои [настройки][35] коммандера;
* [Sublime Text][10] — самый лучший редактор, который не отвлекает тебя от
написания кода, а только, наоборот, помогает тебе писать его быстрее и
эффективнее. Поменять в настройках шрифт на *meslo* и установить
тему «[Soda][11]», и будет красота:  
[![sublime text + soda theme + meslo][12]][12]
* [Git][24] — если вы разрабатываете что-либо и не используете гит, то вы
**делаете это неправильно**;
* [Node.js][27] — будь в тренде! На самом деле, очень полезная штуковина;
* [Ruby][28], [Ruby devkit][29], [Rubygems][30], [Jekyll][31] —
джекилл, наше всё!

И интерфейсные оболочки для гит и свн: [TortoiseGit][32] и [TortoiseSVN][33].

## Личные предпочтения ##

* Сделать чёрным курсор;
* Поставить белые обои на рабочем столе;
* Настроить открытие папок и файлов по одному клику;
* Настроить терминалы на связку фоновый цвет `#555`, а шрифт *Meslo*:  
[![xshell + #555 + meslo][34]][34]
* Настроить симлинки системных папок (документы, загрузки) на внутренние папки
в дропбоксе;
* Настроить хром на папку дропбоксовую папку загрузок, чтобы при переключении
между домашней и рабочей машиной ничего не терялось.



[1]: https://github.com/andreberg/Meslo-Font "Meslo LG"
[2]: /meslo/ "Meslo"
[3]: http://www.avast.com/ "Avast"
[4]: https://www.vmware.com/products/player/ "VMware Player"
[5]: http://www.netsarang.com/products/xsh_detail.html "Xshell 4"
[6]: http://www.ghisler.com/ "Total Commander"
[7]: https://www.google.com/intl/en/chrome/browser/ "Chrome"
[8]: https://www.google.com/intl/en/chrome/browser/index.html?extra=devchannel#eula "Chrome Dev"
[9]: http://www.chromium.org/getting-involved/dev-channel#TOC-How-do-I-choose-which-channel-to-use- "How do I choose which channel to use?"
[10]: http://www.sublimetext.com/ "Sublime Text is a sophisticated text editor for code, markup and prose."
[11]: https://github.com/buymeasoda/soda-theme "Dark and light custom UI themes for Sublime Text 2"
[12]: http://i.imgur.com/J7mitSR.png
[13]: http://sourceforge.net/projects/console/ "Console is a Windows console window enhancement."
[14]: http://www.heidisql.com/ "HeidiSQL is a lightweight, Windows based application for managing MySQL and Microsoft SQL databases."
[15]: http://2gis.ru/ "Бесплатный справочник организаций с картой города"
[16]: http://www.skype.com/ru/ "Skype"
[17]: http://drp.su/ru/ "программа для автоматической установки, обновления и поиска драйверов"
[18]: https://www.dropbox.com/ "Dropbox"
[19]: http://eyeleo.com/ "handy PC application that regularly reminds you to take short breaks for your eyes"
[20]: http://picasa.google.com/ "Picasa"
[21]: http://www.7-zip.org/ "file archiver with a high compression ratio"
[22]: http://www.bittorrent.com/ "BitTorrent"
[23]: http://skillbrains.com/ "The fastest way to do a customizable screenshot"
[24]: http://git-scm.com/ "git --everything-is-local"
[25]: http://ilyabirman.ru/projects/typography-layout/ "Типографская раскладка Ильи Бирмана"
[26]: http://punto.yandex.ru/ "Punto Switcher"
[27]: http://nodejs.org/ "nodejs"
[28]: http://rubyinstaller.org/ "Ruby"
[29]: https://github.com/oneclick/rubyinstaller/wiki/Development-Kit "Ruby installer for windows"
[30]: https://rubygems.org/ "Ruby gems"
[31]: http://jekyllrb.com/ "Jekyll"
[32]: https://code.google.com/p/tortoisegit/ "TortoiseGIT"
[33]: http://tortoisesvn.net/ "TortoiseSVN"
[34]: http://img855.imageshack.us/img855/3728/9931e1ef5e8445a58c08715.png
[35]: https://gist.github.com/matmuchrapna/5035926 "Total commander configuration"
