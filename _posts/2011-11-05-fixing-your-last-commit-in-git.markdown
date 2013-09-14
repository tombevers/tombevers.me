---
layout: post
title: Fixing your last commit in Git
description: Fixing mistakes in your last commit in Git
tags:
- git
---
Sometimes when I'm using git to commit some stuff and I make a mistake, like typo in the commit message, forgot something to add to the commit, found a bug, ... Then It would be helpful if you could fix your mistakes in your previous commit.

This is very easy with **git-commit --amend**, For example:

I made a typo in my previous commit description.

~~~
git commit --amend
~~~

I want to edit a bug in my code I just committed to path/to/file. First fix the bug in path/to/file.

~~~
git add path/to/file
git commit --amend
~~~

I want to remove a file I included accidentally in the last commit.

~~~
git reset HEAD^1 path/to/file
git commit --amend
~~~

**One side note do not fix a commit you already pushed to a remote branch!**
