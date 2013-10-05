---
layout: post
title: Вставка метрики Gauges в репозитории на гитхабе
categories : [gauges, analytics]
---

Вставка метрики Gauges в репозитории на гитхабе
============================================================

Этот пост является отсылкой к статье Михаила Баранова про [метрику на
гитхабе][1] и развитием [предыдущей статьи][2] про Gauges.

Для меня интерес представляет репозиторий [CSS-guidelines][3] с
переводом замечательных гайдов от Гэрри Робертса, так как этот
репозиторий самый популярный среди остальных.

Счётчики для Gauges представляют собой скрипт:

    <script type="text/javascript">
      var _gauges = _gauges || [];
      (function() {
        var t   = document.createElement('script');
        t.type  = 'text/javascript';
        t.async = true;
        t.id    = 'gauges-tracker';
        t.setAttribute('data-site-id', '52036088108d7b260f0002f9');
        t.src = '//secure.gaug.es/track.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(t, s);
      })();
    </script>

Но я проверил и скрипты вырезаются из README-файлов в целях
безопасности, поэтому самый простой вариант не сработает.

Второй и, как оказалось, верный способ это вставка счётчика картинкой. Но встаёт вопрос как её добыть? — очень просто с помощью DevTools и вкладки Network с включённым фильтром по изображениям:

![][4]

Давайте посмотрим какой урл у картинки и сразу же разложим его на составляющие:

    http://secure.gaug.es/track.gif?
        h[site_id]=524f5b6cf5a1f577a2000180
        &
        h[resource]=http%3A%2F%2Fmatmuchrapna.github.io%2Fbauchara%2F
        &
        h[referrer]=
        &
        h[title]=Shower%20Ribbon%20%2B%20Cleaver%20%3D%20Bauchara
        &
        h[user_agent]=Mozilla%2F5.0%20(Macintosh%3B%20Intel%20Mac%20OS%20X%2010_8_5)%20AppleWebKit%2F537.22%20(KHTML%2C%20like%20Gecko)%20Chrome%2F25.0.1364.172%20YaBrowser%2F1.7.1364.22074%20Safari%2F537.22
        &
        h[unique]=0
        &
        h[unique_hour]=0
        &
        h[unique_day]=0
        &
        h[unique_month]=0
        &
        h[unique_year]=0
        &
        h[screenx]=1440
        &
        h[browserx]=1436
        &
        h[browsery]=178
        &
        timestamp=1380937800288

Видно, что большинство полей генерируется джаваскриптом, поэтому нам придётся их опустить, а значит остаются поля `site_id`, `resource`, `title`. Экспериментальным путём было выяснено, что поле `title` необязательно — его Gauges вычислит сам.

Осталось разобраться с остальными двумя полями. `site_id` можно взять из настроек вашего счётчика (который нужно создать перед этим, конечно же)

![][5]

Нетрудно догадаться, откуда и как нужно взять значение для поля
`resource` — это урл до README.md файла. В моём случае это был урл —
`https://github.com/matmuchrapna/Hampi/blob/master/README.md`. Не
обходимо обратить внимание, что строка передаваемая в этот параметр
подвергается некоторой обработке и поэтому для достижения желаемого
результата вам необходимо заменить знак «:» на `%3A` и знак «/» на
`%2F`. В итоге значени `resource` будет похоже на то, что получилось
у меня:
    
    https%3A%2F%2Fgithub.com%2Fmatmuchrapna%2FHampi%2Fblob%2Fmaster%2FREADME.md

## В итоге

В конце концов, я использую такой код для картинки в CSS-guidelines:

    ![](https://secure.gaug.es/track.gif?h[site_id]=52036088108d7b260f0002f9&h[resource]=https%3A%2F%2Fgithub.com%2Fmatmuchrapna%2FHampi%2Fblob%2Fmaster%2FREADME.md)

В админке это выглядит как-то так:

![][6]

Ноль человек происходит из-за того, что я избавился от всех уникальных значений у отсылаемой картинки, поэтому Gauges не может отличать пользователей друг от друга, и из-за этого не считает их вовсе, но согласитесь, что знать даже количество просмотров лучше, чем ничего.


[1]: http://designnotfound.ru/ya-metrika-on-github-repo/
[2]: /gauges-review/
[3]: https://github.com/matmuchrapna/CSS-Guidelines/blob/master/README%20Russian.md
[4]: http://content.screencast.com/users/yaajing/folders/Jing/media/818f85ab-80d9-4a60-bcb3-739db1aa1690/00000621.png
[5]: http://content.screencast.com/users/yaajing/folders/Jing/media/4f58330d-5895-4520-bfbc-a40bbe93a3b9/00000622.png
[6]: http://content.screencast.com/users/yaajing/folders/Jing/media/895f7aeb-fad7-40a0-a61c-eb46e6c98230/00000623.png