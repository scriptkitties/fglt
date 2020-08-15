---
title: Agora
section: agora
layout: default
rss: /rss/agora.xml
---

Dialogues
---------

Starting in June 2020, the [#sqt IRC channel](/irc.html) had a steady stream of
newbies coming in, one of whom ended up regularly engaging with one of the more
experienced and knowledgeable regulars in long dialogues, with occasional
participation/commentary/heckling from others in the channel.  Later on, we
realised these conversations might make instructive reading for anyone
interested in the same topics, and so decided to publish them here.

The names are pseudonyms, and there's a little editing and correction for
clarity, along with some footnotes, but it represents the conversations pretty
well as they happened.

{% for dialogue in site.agora %}
* [<cite>{{ dialogue.title }}</cite>]({{ dialogue.url }}){% endfor%}
