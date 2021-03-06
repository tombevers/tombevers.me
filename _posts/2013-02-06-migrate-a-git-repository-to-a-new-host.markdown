---
layout: post
title: Migrate a git repository to a new host
description: Migrate an existing repository to a new host
tags:
- git
- migration
- github
---
Recently at <a title="PrintConcept.com" href="http://printconcept.com">work</a> I had to migrate our git repositories which we hosted our self to Github. And I wanted to share with you how I've done it.

First we need to do a bare clone of your old git repository. A bare clone will get all of the tags and local branches but no remote tracking branches and other refs these are completely ignored.
<pre>git clone --bare git@oldrepository:repo.git repoClone</pre>
<pre>cd repoClone</pre>
Then push the code to your new repository
<pre>git push --mirror git@github.com:username/repo.git</pre>
Remove the repository clone
<pre>rm -Rf repoClone/</pre>
Change the remote url of your repository
<pre>cd your-repo</pre>
<pre>git remote set-url origin git@github.com:username/repo.git</pre>
That's all!

Note: Following guidelines should work with any repository hosting.
