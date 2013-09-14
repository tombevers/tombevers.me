---
layout: post
title: How to checkout a single file from the stash
description: Command to checkout a single file from the stash in git
categories:
- Tips
tags:
- git
---
Last week I needed a single file that I had stashed before. As git is a very powerful <a href="http://en.wikipedia.org/wiki/Distributed_revision_control" title="DVCS" target="_blank">DVCS</a> it was actually pretty easy.

This will checkout your stashed file from stash 0:


<pre>git checkout stash@{0} -- filename</pre>