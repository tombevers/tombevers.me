---
layout: post
title: How to truncate a foreign key constrained table
description: 
tags:
  - mysql
  - truncate
  - foreign key
---
Sometime ago I wanted to truncate some tables in a MySQL database on my development environment. But I did got the following error:

> ERROR 1701 (42000): Cannot truncate a table referenced in a foreign key constraint

### Explanation

Due to that a table is referenced in a foreign key constraint it isn't possible to truncate the table.

### Solution

It's possible to disable the foreign key constraint check by adding **SET FOREIGN_KEY_CHECKS=0;**

{% highlight sql %}
SET FOREIGN_KEY_CHECKS=0;
TRUNCATE table1;
TRUNCATE table2;
SET FOREIGN_KEY_CHECKS=1;
{% endhighlight %}

The example works as follow:

- Disable the foreign key constraint check
- Truncate table1
- Truncate table2
- Enable foreign key constraint check again

It's not neccesarry to use **SET FOREIGN_KEY_CHECKS=1;** to enable the foreign key constraint check again as the setting is only valid during the connection. As soon as you disconnect, the next session will have it set back to 1.