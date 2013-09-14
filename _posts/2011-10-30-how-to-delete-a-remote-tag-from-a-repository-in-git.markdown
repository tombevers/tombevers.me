---
layout: post
title: How to delete a (remote) tag from a repository in git
description: "Little tip: How to delete a tag from a (remote) repository in git?"
tags:
- git
---
I once had created a tag and pushed it to a remote repository, but my tag was bad. Luckily you can delete a (remote) tag from a repository in git.

My bad tag is called '1.0.1' in the example below:

{% highlight bash %}
git tag -d 1.0.1
{% endhighlight %}

This deletes the tag from your local branch.

{% highlight bash %}
git push origin :refs/tags/1.0.1
{% endhighlight %}

This deletes the tag from the remote repository.