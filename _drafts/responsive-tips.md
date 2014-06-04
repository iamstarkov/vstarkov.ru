---
layout: post
title: 5 хитростей при создании отзывчивого сайта
description: "Однажды я набил себе шишек в создании отзывчивых сайтов, затем ещё раз. Но на этот раз сильнее и решил записать выводы на память."
categories : [css]
---


5 хитростей при создании отзывчивого сайта
================================================================================

Эмуляторы:
* iOs emulators через xCode
* android studio сложный в настройке и медленный
* [genymotion][genymotion] сказка
* opera mini simulator
* opera mobile simulator
* devTools in chrome 

ни один эмулятор не сможет в точности повторить все особенности устройств. для критичных устройств важно иметь физический девайс в доступности.


1. max-device-width: 1000px при смене ориентации может уже не работать
2. если делаете адаптивно, то viewport width=device-witdh 
2. иначе viewport width=1024px
3. при смене ориентации портится scale, поэтому либо js-решение, либо так: min-scale=1, max-scale=1, init-scale=1, user-scalable=no




 [genymotion]: http://www.genymotion.com/
