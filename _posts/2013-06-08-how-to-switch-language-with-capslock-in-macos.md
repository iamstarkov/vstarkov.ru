---
layout: post
title: Как менять раскладку с помощью CapsLock в MacOS?
isNotTranslated: true
categories : [macos]
---

Как менять раскладку с помощью CapsLock в MacOS?
============================================================

Как я уже писал, мне кажется удобным переключать язык одной клавишей, поэтому я
пытался найти способ сделать это в MacOS. Я не нашёл, как простую инструкцию
для мака (PuntoSwitcher не имеет такой опции) и поэтому, когда у меня всё
получилось, то решил записать себе на будущее и вдруг кому-то ещё пригодится.

1. Скачайте и установите [KeyRemap4MacBook][1] и [PCKeyboarHack][2], каждое из них после
установки попросит вас перезагрузить компьютер — соглашайтесь;
2. Откройте PCKeyboarHack и поменяйте (двойным кликом) значение keycode с 51 до
110;  
![Изображение][Шаг-2]
3. Откройте KeyRemap4MacBook и в разделе For PC users, установите галочку напротив
Application key to Command_L+Space;
![Изображение][Шаг-3]
4 Вы уже наполовину восхитительны! Осталось только отменить стандартное поведение
CapsLock;
5. Откройте настройки клавиатуры, кликните настройки клавиш-модификаторов:  
![Изображение][Шаг-5.1]  
и отмените поведение для клавиши CapsLock:  
![Изображение][Шаг-5.2]()
6. Готово — вы полностью восхитительны и начинаете эконосить себе минуты вашего
времени каждый день!


[1]: https://pqrs.org/macosx/keyremap4macbook/index.html.en "KeyRemap4MacBook"
[2]: https://pqrs.org/macosx/keyremap4macbook/pckeyboardhack.html.en "PCKeyboarHack"


[Шаг-2]: http://content.screencast.com/users/yaajing/folders/Jing/media/a1f20aeb-d1e5-44b4-87f6-444fc6a27df3/00000121.png "Шаг 2"
[Шаг-3]: http://content.screencast.com/users/yaajing/folders/Jing/media/13d036ac-b311-422a-81c6-ccf8de2d8b19/00000122.png "Шаг 3"
[Шаг-5.1]: http://content.screencast.com/users/yaajing/folders/Jing/media/4ab42f51-1364-4347-80a1-1daeb9ecfa27/00000123.png "Шаг 5.1"
[Шаг-5.2]: http://content.screencast.com/users/yaajing/folders/Jing/media/5e52c3ac-4b88-4bda-a2f5-7b2cddb755dd/00000124.png "Шаг 5.2"