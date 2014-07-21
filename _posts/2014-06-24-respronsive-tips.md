---
layout: post
title: 6 хитростей при создании отзывчивого сайта
description: "Однажды я набил себе шишек в создании отзывчивых сайтов, затем ещё раз. Но на этот раз сильнее и решил записать выводы на память."
categories: 
  - css
published: true
issue: 19
---

6 хитростей при создании отзывчивого сайта
================================================================================

Однажды я набил себе шишек в создании отзывчивых сайтов, затем ещё раз; а теперь набил так сильно, что решил записать выводы на память.

1. Пользуйтесь эмуляторами:
    * [iOS emulators через xCode][xcode] и [лайфхак][xcode-tip]
    * Android Studio сложный в настройке, медленный и излишний для тестирования сайтов.
    * Эмулятор андроид-устройств [genymotion][genymotion] — быстрый удобный и бесплатный для тестирования сайтов.
    * [Opera Mini симулятор][opera-mini]
    * [Opera Mobile эмулятор][opera-mobile]
    * [Эмуляция в инструментах разработки Хрома][chrome-devtools-emulation]
    * Необходимо заметить, что ни один эмулятор не сможет в точности повторить все особенности устройств. для критичных устройств важно иметь физический девайс в доступности.
2. `max-device-width` при смене ориентации может уже не работать, равно как и `max-device-height`.
3. Если делаете адаптивно, то `<meta viewport="width=device-witdh" />`, иначе `<meta viewport="1024px" />`, где `1024px` можно заменить на максимальную ширину контентной области или меньше.
4. При смене ориентации портится scale, поэтому либо js-решение, либо так: `<meta viewport="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />`, но тогда вы должны быть уверены, что у пользователя не возникнет желания зумить ваш сайт.
5. Чтобы избежать неожиданного изменения размера шрифта только на айфонах и айпадах используйте `-webkit-text-size-adjust: 100%;`, а не `none`, чтобы текст можно [было масштабировать в десктопных браузерах][normal-text-adjust].
6. [Пользуйтесь ngrok][ngrok] для тестирования локального отзывчивого сайта на мобильных




 [xcode]: https://developer.apple.com/xcode/
 [xcode-tip]: http://stackoverflow.com/a/14919903/1057730
 [genymotion]: http://www.genymotion.com/
 [opera-mini]: http://demo.opera-mini.net/public/
 [opera-mobile]: http://www.opera.com/ru/developer/mobile-emulator
 [chrome-devtools-emulation]: https://developer.chrome.com/devtools/docs/mobile-emulation
 [normal-text-adjust]: https://twitter.com/artpolikarpov/status/150276055234650117
 [ngrok]: http://frontender.info/expose-yourself-with-ngrok/
