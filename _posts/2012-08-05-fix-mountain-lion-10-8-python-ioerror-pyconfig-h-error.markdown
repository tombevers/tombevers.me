---
layout: post
title: Fix Mountain Lion 10.8 Python IOError pyconfig.h Error
description: Fix Mountain Lion 10.8 Python IOError pyconfig.h Error
tags:
- Mac OS X Mountain Lion
- Python
---
Recently I upgraded to Mountain Lion Mac OS X. But when I launched VIM for the first time I got following errors:
<pre>Traceback (most recent call last):
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site.py", line 565, in 
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site.py", line 547, in main
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site.py", line 278, in addusersitepackages
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site.py", line 253, in getusersitepackages
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site.py", line 243, in getuserbase
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/sysconfig.py", line 523, in get_config_var
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/sysconfig.py", line 419, in get_config_vars
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/sysconfig.py", line 298, in _init_posix
IOError: invalid Python installation: unable to open /usr/include/python2.7/pyconfig.h (No such file or directory)</pre>

<p>After executing following commands I could launch VIM again.</p>

<pre>sudo mkdir -p /usr/include/python2.7
sudo ln -s /System/Library/Frameworks/Python.framework/Versions/Current/include/python2.7/pyconfig.h /usr/include/python2.7/pyconfig.h</pre>
