---
layout: post
title: Update WordPress via SSH/SCP
description: How to update a WordPres blog via the automatic update using SSH/SCP. As FTP is insecure.
tags:
- Automatic Update
- FTP
- PHP
- SCP
- SSH
- WordPress
---
Since <strong>WordPress</strong> 2.7 there is this cool feature <strong>Automatic Update</strong>. But by default this will use <strong>FTP</strong>. As <a title="FTP Security" href="http://en.wikipedia.org/wiki/File_Transfer_Protocol#Security">FTP</a> is an insecure protocol (Which I don't have installed on my server), I was looking for a way to update via <strong>SSH/SCP</strong> and luckily Wordpress does support this feature.

I'm going to explain how to enable SSH on your server as this isn't installed by default.

On Ubuntu just execute the following commands, this will install the <strong>SSH2 extension</strong> for PHP:
<pre>apt-get install libssh2-1-dev libssh2-php</pre>
Now test if PHP recognizes it's new ssh2 extension by running (This will only work when you've install the php-cli package):
<pre>php -m | grep ssh2</pre>
After this restart Apache:
<pre>service apache2 restart</pre>
Now you are ready to use the automatic update of WordPress via SSH. As shown below it's important to set the connection type to SSH2 in the connection information and enter the correct SSH credentials.

<img title="WordPress Update" src="/assets/img/2012-02-25/wordpress-update.png" alt="" width="540" height="460" />

<strong>Please note: Always take a backup before doing an update!</strong>
