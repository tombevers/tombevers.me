---
layout: post
title: Opening a browser or files from the terminal
description: How to open a browser or files fast and easy from the terminal to improve your workflow.
description: 
tags:
- Browser
- CLI
- Command Line
- File
- Linux
- Mac OS X
- Terminal
- Ubuntu
---
I quite often want to open my browser from the terminal, this is very easy to do by using the <code>sensible-browser</code> command in Debian/Ubuntu distros.

A more cross-distribution alternative is <code>xdg-open</code> this is acctualy more powerful because you also can open files with it. And for Mac OS X you need to use <code>open</code> this command is similar to <code>xdg-open</code>. These commands always open your default browser/program.

I really thinks these commands improve your workflow because you don't need to leave the keyboard for opening the browser or a file.

Some examples:
<pre>
sensible-browser index.html
sensible-browser http://google.com

xdg-open index.html
xdg-open http://google.com
xdg-open image.png

open index.html
open http://google.com
open image.png 
</pre>
