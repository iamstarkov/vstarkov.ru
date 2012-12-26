---
layout: post
title: Как использовать Jekyll с плагинами на github pages
isNotTranslated: true
categories : [css]
---

Как использовать Jekyll с плагинами на github pages?
================

Предыдущая [заметка](/ghpages-sync/) рассказывала про то, как избежать рутины при хостинге своего статичного блога. В ней всё хорошо и у вас не будет проблем, пока вы не захотите расширить функциональность своего «Jekyll» сайта. А это потребуется даже для обычных тегов и категорий; «Jekyll» — очень простой движок. После прикручивания дополнительной функциональности и деплоя сайта на гитхаб. Вы обнаружите, что сайт не работает.

### Проблемы с github pages ###

Первые же ссылки в гугл поиске выдают ссылки объсяняющие, что github pages не работают с jekyll плагинами. Я подозреваю, что это сделано в целях безопасности.

Ссылки, которые помогут нам разобраться с решением проблемы.

* [Using Jekyll with Pages](https://help.github.com/articles/using-jekyll-with-pages)
* [Jekyll + Plugins + Github + You](http://charliepark.org/jekyll-with-plugins/) via [charlie park](http://charliepark.org/)
* [Jekyll (with plugins!) hosted on GitHub Pages](http://edhedges.com/blog/2012/07/30/jekyll-with-plugins-hosted-on-github-pages/) via [Eddie Hedges](http://edhedges.com/)
* [GitHub Pages and Jekyll plugins](http://arademaker.github.com/blog/2011/12/01/github-pages-jekyll-plugins.html) via [Alexandre Rademaker](http://arademaker.github.com/)

#### Решение Чарли Пака ####

Первое решение предлагает разделить блог на две части, то есть поддерживать два разных репозитория — один для исходников блога, второй для результата генерации джекилла. Это жутко неудобно, да и раздражать будет. Другие рещения на порядок лучше и поэтому это решение я не буду приводить здесь.

#### Решение Эдди Хеджеса ####

Это решение не такое понятное сразу. Оно предлагает сделать объект коммита, который будет содержать историю только одной папки `_site`:
    
    echo 'description of what we are doing' | git commit-tree dev^{tree}:_site

Эта комманда выведет **id** этого коммита, и дальше по этому **id** обновим выбранную для github pages ветку 

    git update-ref refs/heads/master COMMIT_ID

После этого надо убедиться, что ветка `master` имеет только нужные нам файлы:

    $ git checkout master

Как видно, это то, что нам нужно. Так как мы не определили родителя коммита, то вынуждены сделать форсированный пуш на сервер:

    $ git push -f origin master

Но можно, не делать форсированный пуш, если указать родителя коммита в самой первое команде:

    $ echo 'description of what we are doing' | git commit-tree dev^{tree}:_site -p $(cat .git/refs/heads/master)

После этого всё можно оптимизировать до одной строки
    
    $ git update-ref refs/heads/master $(echo 'Add commit message here!' | git commit-tree dev^{tree}:_site -p $(cat .git/refs/heads/master))


#### Решение Александра Рэйдмэйкера ####

На мой взгляд самое лаконичное решение.

    $git checkout source
    // делайте всё, что вам угодно
    $ git status / git add / git commit
    $ jekyll
    $ checkout master
    $ cp -r _site/* . && rm -rf _site/ && touch .nojekyll
    $ git status > git add > git commit
    $ git push -all origin

Этот способ привлекателен тем, что у вас только один репозиторий, а для разных версий сайта вы используете, также как и раньше — разные ветки.

Самое важное в этой строке: 

    $ cp -r _site/* . && rm -rf _site/ && touch .nojekyll

Эта комманда составная и состоит из следующих более простых комманд, разделенных знаком `&&`

    $ cp -r _site/* . // скопировали всё из подпапки в папку родительского уровня
    $ rm -rf _site/ // удаляет содержимое папки *_site*
    $ touch .nojekyll // создаёт файл, который сообщает гитхабу не запускать джекилл на своём сервере с помощью посткоммит хука.



Александр предлагает создать две ветки: `source` для исходников блога, и `master` для результатов работы Джекилла.

### Поиск решения ###

В моём случае, я осознанно использую другую конфигурацию. `master` — ветка для исходников блога, так как эта ветка по умолчанию главная, а с ней чаще всего и приходится работать, поэтому она и остаётся главной. Для блога я использую зарезервиронную гитхабом ветку `gh-pages`. Для подобной конфигурации, я и приведу окончательное решение.

Убедитесь, что вы в `master` ветке

    $ git branch
      gh-pages
    * master

Если маркер стоит напротив другой ветки, то перейдите в master

    $ git checkout master

В решении Рэйдмэйкера, мне казалось странным запускать джекилл каждый раз, когда надо что-то закоммитить, можно же запустить его один раз в режиме `--auto` — и он будет постоянно сам перегенерировать контент, обнаруживая изменения. Во-вторых, после комманды
    
    $ cp -r _site/* . && rm -rf _site/ && touch .nojekyll

В папке подготовленной для отправления на сервер, как готовый сайт, оставалось много лишнего материала относящегося к генератору сайта, что с одной стороны приемлемо, но  сдругой стороны не красиво.

    $ git status // посмотрите, что надо закоммитить
    $ git add // добавьте это в коммит
    $ git commit // закоммитьте
    $ git checkout gh-pages && git merge master // синхронизируем с главной веткой,
    $ shopt -s extglob // включаем расширенный шелл
    $ rm !(_site) -r // удаляем все папки, кроме _site
    $ mv _site/* ./ // перемещаем сгенерированный сайт в корень папки.
    $ rm _site // удаляем папку для генерации
    $ git add .
    $ git commit -m 'converted to flat site' 
    $ git checkout master // перемещаемся в мастер ветку
    $ git push --all // пушим все изменения вместе со всеми ветками на сервер


Окончательное решение
-----------------------------

Теперь, рассмотрим, что можно оптимизировать до одной строчки.

    $ git status // посмотрите, что надо закоммитить
    $ git add // добавьте это в коммит
    $ git commit // закоммитьте

Эти строчки, всегда придётся делать руками — их не трогаем.  
А всё остальное как мы видим можно сократить.

Первый шаг:

    $ git checkout gh-pages && git merge master 
    $ shopt -s extglob && rm !(_site) -r
    $ mv _site/* ./ && rm _site
    $ git commit -am 'converted to flat site' 
    $ git checkout master && git push --all


`git commit -am 'smth'` === `git add . && git commit -m 'smth'`  
Второй шаг:

    $ git checkout gh-pages && git merge master  
    $ shopt -s extglob && rm !(_site) -r && mv _site/* ./ && rm _site -r
    $ git commit -am 'converted to flat site' && git checkout master && git push --all

Окончательный шаг:

    $ git checkout gh-pages && git merge master && shopt -s extglob && rm !(_site) -r && mv _site/* ./ && rm _site -r && git commit -am 'converted to flat site' && git checkout master && git push --all








