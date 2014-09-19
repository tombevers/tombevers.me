---
layout: default
title: Contact
---
#Contact

If you have any questions or comments, choose any of the contact types below and get in touch with me. I'm looking forward to your message.

<div class="row">
  <div  class="col-md-4">
    <h3><i class="icon-envelope icon-1x"></i>&nbsp;&nbsp;Email</h3>
    <a href="mailto:hello@tombevers.me">hello@tombevers.me</a>
  </div>
  {% if site.owner.twitter %}
  <div  class="col-md-4">
    <h3><i class="icon-twitter icon-1x"></i>&nbsp;&nbsp;Twitter</h3>
    <a href="http://twitter.com/{{ site.owner.twitter }}" title="{{ site.owner.name}} on Twitter">@tombevers</a>
  </div>
  {% endif %}
  {% if site.owner.linkedin %}
  <div class="col-md-4">
    <h3><i class="icon-linkedin icon-1x"></i>&nbsp;&nbsp;Linkedin</h3>
    <a href="http://linkedin.com/in/{{ site.owner.linkedin }}" title="{{ site.owner.name}} on LinkedIn">tombevers</a>
  </div>
  {% endif %}
</div>