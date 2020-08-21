---
title: IRC
permalink: /irc.html
section: irc
layout: default
---

## Connection details

* Server: [chat.freenode.net](https://freenode.net/kb/answer/chat)
* Port: [6697 for secure](ircs://chat.freenode.net:6697), [6667 for cleartext](/assets/img/shiggy.jpg)
* Channel: #sqt

## Choosing a client

[Connect now via webchat](https://kiwiirc.com/client/irc.freenode.net/sqt)

The webchat is OK as a means of connection for those new to IRC, but if you end
up having fun in our channel and decide to stick around, you will be
<del>harassed</del> <ins>encouraged</ins> to switch to a local client instead:

* [HexChat](https://hexchat.github.io/) (GUI)
* [Irssi](https://irssi.org/) (terminal)
* [WeeChat](https://weechat.org/) (terminal)

Your operating system's package manager very likely includes packages for at
least one of these.  HexChat is probably the easiest for anyone without much
experience with terminal programs.

## Helpful links

* #sqt anthem: [Pink Guy---*Pink Season*---"STFU"](https://www.invidio.us/watch?v=OLpeX4RRo28)—Take careful note of [1m42s](https://www.invidio.us/watch?v=OLpeX4RRo28&t=1m42s).  This is how your initial entrance to the channel will most likely be perceived.
* [Renaming Git "master" to "main"](https://www.invidio.us/watch?v=EztbyhAJNtk)
* [How kline feels in #sqt](/assets/vid/kline-in-sqt.webm)
* [Why he stays in #sqt anyway](/assets/img/why-kline-stays.jpg)
* [Telling DigitalHandcuffs he's wrong](/assets/vid/telling-digitalhandcuffs-hes-wrong.webm)

## Shit #sqt says

You can follow updates on new quotes [through RSS](/rss/quotes.xml)!

{% assign quotes = site.quotes | sort: 'name' | reverse %}
{% for quote in quotes %}
    {% assign this_year = quote.date | date: "%Y" %}
    {% if this_year != prev_year %}
### {{ this_year }}
    {% endif %}
    {% highlight text %}{{ quote.content }}{% endhighlight %}
    {% assign prev_year = quote.date | date: "%Y" %}
{% endfor %}
