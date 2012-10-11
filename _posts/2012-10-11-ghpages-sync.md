---
layout: post
title: Как синхронизировать 'github pages' c 'master' веткой
categories : [git]
---

Как синхронизировать 'github pages' c 'master' веткой
=====================================================

После моего переезда с Tumblr на [Jekyll][1] стала очевидной проблема двух веток и их синхронизация, так как для хостинга сайта нужно иметь сайт в ветке gh-pages, но в тоже время от master никак не избавишься. И хочется всё таки коммитить посты в master, а gh-pages ветка сама обновлялась и отправлялась на сервер.

Существуют несколько очень похожих путей решения проблемы: 'git rebase master' или 'git merge master'. Первый способ [описан][2] в блоге у Lea Verou. Второй способ по сути заключается в замене 'git rebase master' на 'git merge master'. 

	$ git add .
	$ git status // посмотреть какие изменения произошли
	$ git commit -m 'Some descriptive commit message'
	$ git push origin master
	$ git checkout gh-pages // сменить ветку на gh-pages
	$ git rebase master // синхронизировать gh-pages c master (git merge master)
	$ git push origin gh-pages // отправить ветку на сервер.
	$ git checkout master // вернуться в master

В этом решении мне не понравилось большое количество строк, выполнении 'git push' целых два раза для одного коммита. Но самое важное, это я понял механизм работы синхронизации. Ещё одну идею мне подсказал небольшой [пост-коммит хук][3] упомянутый в комментариях к посту Lea Verou.

После этого я написал своё элегантное (мне кажется):

	$ git add . && git commit -m 'Some descriptive commit message'
	$ git checkout gh-pages && git merge master && git checkout master && git push --all

Первая строчка добавляет в коммитит все модифицированные файлы, и коммитит все файлы — это чаще всего и надо сделать когда добавляешь пост в блог. Вторая строчка объединяет в себе четыре команды (предполагается, что в находитесь в master): смена ветки на gh-pages, объединение с master, возврат в мастер, и отправление обеих веток на сервер.  
И также я решил использовать 'git merge master' так как он созраняет историю коммитов.

Спасибо интернету за столь элегантное решение проблемы.


  [1]: http://jekyllrb.com/ 'transform your text into a monster'
  [2]: http://lea.verou.me/2011/10/easily-keep-gh-pages-in-sync-with-master/ 'Easily keep gh-pages in sync with master'
  [3]: http://get.inject.io/n/XxsZ6RE7 'Git post-commit hook to keep master and gh-pages branch in sync'

