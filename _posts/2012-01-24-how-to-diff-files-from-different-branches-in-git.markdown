---
layout: post
title: How to diff files from different branches in git
description: Command will let you diff files from different branches in
tags:
- git
- diff
---
Once I needed to view the differences between the same file in different branches in git. This can be done by using following command:

<pre>
git difftool somebranch:README otherbranch:README
</pre>
