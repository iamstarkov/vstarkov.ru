---
layout: post
title: Как добавить opengraph-метатеги и twitter cards на ваш сайт
description: Opengraph метатеги нужны, чтобы после того, как человек поделился страницей вашего сайта в своей социальной сети — запись об этом выглядела достойно и так как вам хочется.
categories : [html, frontend]
---

# Как добавить opengraph-метатеги и twitter cards на ваш сайт

Opengraph метатеги нужны, чтобы после того, как человек поделился страницей
вашего сайта в своей социальной сети — запись об этом выглядела достойно
и так как вам хочется. Например так:  
[![Full summary card](http://i.imgur.com/A0u0DoA.png)](https://twitter.com/nytimes/status/547531618098118656)

Покажу на примере сайта [getbem.com][gb], так как именно этим я и занимался,
закрывая [22-ое ишью][issue-22] в этом проекте. И после этого шейры страниц
гетбема имеют неплохой вид в твиттере:  
[![Summary card](http://i.imgur.com/3XxXyTK.png)](https://twitter.com/getbem/status/547330502135652352)

Всё очень просто. Добавьте на каждую страницу в `<head>` такие метатеги:

    <meta name="og:url"         content="http://getbem.com/404.html" />
    <meta name="og:image"       content="http://getbem.com/img/bem_black.png" />
    <meta name="og:title"       content="BEM — 404 Page not found" />
    <meta name="og:description" content="Sorry Mario, the BEM is in another castle" />

Убедитесь, значения метатегов для каждой из страниц уникальные.
*Адреса картинок должны содержать в себе домен.* Также картинки должны быть
не очень большими, конечно же.

## Twitter Сards

[Выберите один из семи типов карточек][cards-types] твиттера. Обычно это
["Summary Card"][summary-card]. Материал для самой карточки мы уже подготовили,
добавив opengraph метатеги, поэтому теперь осталось только настроить карточку твиттера:

    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="@getbem" />

Замените @getbem на ваш твиттер аккаунт. Более точную настройку можно провести
с помощью [справки от твиттера][cards].

После того, как настроите карточку как вам хочется, останется только проверить
её и заапрувить ваш домен для системы Twitter cards. Это делается с помощью
[валидатора Twitter Cards][validator]. После того как исправите все недочёты
(если они есть), твиттер предложит заапрувить ваш сайт в свою систему карточек:  
![](http://i.imgur.com/WOOWs22.png)

Жмите «Request Approval», заполните небольшую форму и через небольшое
время (примерно 15 минут) твиттер начнёт показывать твиты о страницах
вашего сайта с дополнительной информацией:

[![карточка у медузы](http://i.imgur.com/jZLZUtf.png)](https://twitter.com/meduzaproject/status/547456821741768705)

[cards]: https://dev.twitter.com/cards/markup
[cards-types]: https://dev.twitter.com/cards/types
[summary-card]: https://dev.twitter.com/cards/types/summary
[gb]: http://getbem.com
[issue-22]: https://github.com/getbem/getbem.com/issues/22
[validator]: https://cards-dev.twitter.com/validator
