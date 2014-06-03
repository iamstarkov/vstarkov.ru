---
layout: post
title: Избавление от рутины в рибейзах с помощью флага autosquash
description: Каждый, кто пользуется форками и рибейзами, знает, что после схлопывания коммитов в один, наступает пора дополнительных правок после тестирования и код-ревью.
categories : [relations, career]
---

Избавление от рутины в рибейзах с помощью флага autosquash
============================================================

Каждый, кто пользуется форками и рибейзами, знает, что после схлопывания коммитов в один, наступает пора дополнительных правок после тестирования и код-ревью. И каждый раз ты сидишь и не знаешь, что написать в сообщении коммита, так как это всего лишь правки и потом тебе их всё равно схлопывать до одного коммита. Очень хочется не думать ни над первым, ни над вторым, так как это рутина.

Решением является:

1. Запомнить SHA1-хэш последнего коммита (например, 3141592).
2. Коммитить с флагом `--fixup=SHA1` (например `git commit --fixup=3141592`) — на этом шаге флаг fixup избавляет от придумывания сообщения коммиту-правке.
3. Запустить интерактивный рибейз по количеству коммитов-правок + последний коммит (N+1) c флагом `--autosquash` (например, `git rebase -i HEAD~4 --autosquash`) — это избавляет от необходимости менять руками статус всех коммитов-правок c `pick` на `f|fixup`, остаётся только сохранить коммит после рибейза.

Посмотрим как это работает в жизни:

    git commit -m 'WOW, SUCH COMMIT'; # SHA1-хэш (например, 3141592)
    git add first.md # правка 1
    git commit --fixup=3141592
    git add second.md # правка 2
    git commit --fixup=3141592
    git add third.md # правка 3
    git commit --fixup=3141592
    git rebase -i HEAD~4 --autosquash

После этого откроется стандартный редактор, для управления рибейза и выглядеть он будет примерно так:

      1 pick 3141592 WOW, SUCH COMMIT
      2 fixup 52edd9f fixup! WOW, SUCH COMMIT
      3 fixup bd89b3d fixup! WOW, SUCH COMMIT
      4 fixup 6b5f58f fixup! WOW, SUCH COMMIT
      5
      6 # Rebase 3141592..6b5f58f onto 62f6139
      7 #
      8 # Commands:
      9 #  p, pick = use commit
     10 #  r, reword = use commit, but edit the commit message
     11 #  e, edit = use commit, but stop for amending
     12 #  s, squash = use commit, but meld into previous commit
     13 #  f, fixup = like "squash", but discard this commit's log message
     14 #  x, exec = run command (the rest of the line) using shell
     15 #
     16 # These lines can be re-ordered; they are executed from top to bottom.
     17 #
     18 # If you remove a line here THAT COMMIT WILL BE LOST.
     19 #
     20 # However, if you remove everything, the rebase will be aborted.
     21 #
     22 # Note that empty commits are commented out

И как только ты сохранишь этот файл, рибейз произойдёт без лишних телодвижений.

Тем самым, теперь рутины в твоей жизни стало меньше.
