---
layout: post
title: Clean up old remote git branches
description: How to clean up old remote git branches that have been deleted
tags:
- git
---
After deleting a git branch both local and remote this will not be removed from your colleagues git repositories. You're colleagues still will see the branch as a remote branch. To clean up the old remote branches just execute following command:
<pre>git remote prune origin</pre>
