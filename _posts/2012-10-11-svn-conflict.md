---
layout: post
title: local delete/edit, incoming delete upon update
description: Решение распространённой проблемы в SVN
categories : [svn]
---

Как разрешить «local edit, incoming delete upon update» ?
=========================================================

Сегодня столкнулся с такой проблемой, и даже не знал почему она возникла.  
Выглядить она примерно так:

	!     C .htaccess
	      >   local edit, incoming delete upon update
	!     C foo
	      >   local delete, incoming delete upon update
	!     C bar
	      >   local edit, incoming delete upon update

Так происходит из-за того, что файл (к примеру .htaccess) был удалён из репозитория, а я не знал об этом и редактировал или даже удалил этот файл локально — именно это и не нравится SVN. Ниже я приведу помогший мне [способ][1] разрешить конфликт версий (не забывайте про бэкапы).

В рабочей директории, пересоздайте конфликтный файл:
	
	$ touch foo

Откатите этот файл (это его удалит)
	
	$ svn revert foo

Теперь удалите его
	
	$ rm foo

Это победа! Конфликта нет.

	$ svn st

Другой способ разрешения конфликта
---------------

'$ svn resolve --accept=working PATH' взято отсюда [svn: how to resolve “local…][2] 


  [1]: http://yuechengshao.blogspot.com/2012/01/svn-local-deleteedit-incoming-delete.html
  [2]: http://stackoverflow.com/a/4318394/1057730  'svn: how to resolve “local edit, incoming delete upon update” message'
