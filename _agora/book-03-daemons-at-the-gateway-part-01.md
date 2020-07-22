---
title: Book III—Daemons at the Gateway
description: Glaucon returns to the agora in the hopes of restoring a bygone age of internet social media, and Socrates explains to him how the spirit of the past endures in both culture and technology.
layout: default
---

Introduction
------------

The idealistic Glaucon returns to the agora in search of further wisdom.
Disillusioned by what he has seen of the modern web and the internet in
general, he has instead been inspired by what he has lately learned outside the
agora of internet culture of the 80s and 90s.  Confident in Socrates' wisdom,
he petitions him for knowledge.  Socrates explains the technical historical
context of BBSes, Usenet, UUCP, and NNTP---as Adeimantus, Thrasymachus, and the
eccentric newcomer Pyrrhus look on.  Socrates' history culminates in the
beginnings of a crash course in the fundamental routing protocol of the
Internet: the Border Gateway Protocol.

Dramatis personae
-----------------

In order of appearance:

* <span class="name">Glaucon</span>, a Cretin visitor to the agora, with grand ideals of freedom and minimalism in computing
* <span class="name">Socrates</span>, famed philosopher-engineer of Athens
* <span class="name">Adeimantus</span>, a Cretin regular
* <span class="name">Thrasymachus</span>, an Ithacan regular
* <span class="name">Pyrrhus</span>, an eccentric Epirote who first visited the agora around the same time as Glaucon

Prelude
-------

*The citizens in the agora have been discussing the finer points of mail servers, conversational automata, and correctly naming characters in <cite>Sailor Moon</cite>, before <span class="name">Glaucon</span> poses his question.*

<b class="name">Glaucon:</b> Socrates, do you know what FidoNet and Usenet are?  
<b class="name">Socrates:</b> yes  
<b class="name">Glaucon:</b> what's the difference between them?  
<b class="name">Glaucon:</b> I still don't understand  
<b class="name">Socrates:</b> Usenet was a network of NNTP servers  
<b class="name">Socrates:</b> FidoNet was a network of bulletin board systems  
<b class="name">Socrates:</b> NNTP is a sister protocol to email, which had shared roots in using what was basically SCP to copy people's mail and files around  
<b class="name">Socrates:</b> BBSes were basically someone who said "what if I put a custom login shell on my home SSH connection a la [netris.rocketnine.space](https://netris.rocketnine.space)  
<b class="name">Glaucon:</b> but I've heard people use FidoNet to connect to Usenet?  
<b class="name">Socrates:</b> yes, in the same way that you can use some SSH shell server to connect to IRC  
<b class="name">Socrates:</b> NNTP services were not something afforded to home users at the beginning of the Internet  
<b class="name">Socrates:</b> so a BBS service that did have access to Usenet was a good springboard  
<b class="name">Socrates:</b> that some of these BBS services peered with each other is separate  
<b class="name">Glaucon:</b> right, BBS was a weird custom connection to a server which had email and connections with other users and stuff, but you couldn't just Telnet in usually, you needed the software?  
<b class="name">Socrates:</b> no  
<b class="name">Glaucon:</b> I'm lost then  
<b class="name">Glaucon:</b> go on  

A strange game
--------------

<b class="name">Socrates:</b> `$ ssh netris.rocketnine.space`  
<b class="name">Socrates:</b> enjoy a game, get back to me in 5  

*<span class="name">Glaucon</span>, <span class="name">Adeimantus</span>, and <span class="name">Thrasymachus</span> each try the game.*

<b class="name">Adeimantus:</b> wow, better than BSD `tetris` [^bsd]  
<b class="name">Thrasymachus:</b> Cool  
<b class="name">Socrates:</b> good, right?  
<b class="name">Glaucon:</b> I didn't know you could do something like this with SSH  
<b class="name">Glaucon:</b> the latency is non-existent  
<b class="name">Socrates:</b> imagine now that you did this via Telnet  
<b class="name">Socrates:</b> and imagine instead of Tetris it was something like a modern (well, late 00s I guess now) web forum  
<b class="name">Glaucon:</b> was I supposed to play multiplayer to test?  
<b class="name">Socrates:</b> I don't really mind as long as you get the picture  
<b class="name">Socrates:</b> this is what a BBS was  
<b class="name">Adeimantus:</b> except with awesome ASCII art  
<b class="name">Socrates:</b> yes, in the late BBS age, there were experiments in using other protocols, usually for more advanced graphical capabilities  
<b class="name">Socrates:</b> FidoNet likewise was a popular experiment, but an experiment nonetheless  
<b class="name">Glaucon:</b> even with stronger PCs, I still don't get it  
<b class="name">Glaucon:</b> why did we stop?  
<b class="name">Socrates:</b> AOL, basically [^sep]  

The genealogy of network forums
-------------------------------

<b class="name">Socrates:</b> BBSes still exist to this day  
<b class="name">Socrates:</b> firstly as web forums  
<b class="name">Socrates:</b> now as Reddit  
<b class="name">Glaucon:</b> neat  
<b class="name">Socrates:</b> there are still some hangers-on who use *þe olde style* BBSes, but Reddit is a direct descendant, via web forums  
<b class="name">Glaucon:</b> so Usenet is sort of like a more versatile FidoNet?  
<b class="name">Socrates:</b> no  
<b class="name">Glaucon:</b> uhh  
<b class="name">Glaucon:</b> I still don't get how they relate  
<b class="name">Socrates:</b> they don't  
<b class="name">Glaucon:</b> so that Tetris game was supposed to be FidoNet?  
<b class="name">Glaucon:</b> or Usenet?  
<b class="name">Socrates:</b> BBS  
<b class="name">Glaucon:</b> oh okay  
<b class="name">Socrates:</b> of which FidoNet was an overlaid network  
<b class="name">Socrates:</b> BBSes were like forums  
<b class="name">Glaucon:</b> BBS is a custom Telnet, FidoNet was a network of them, and Usenet is more like proto-Internet?  
<b class="name">Socrates:</b> no  
<b class="name">Glaucon:</b> but that's an accurate description of BBS?  
<b class="name">Socrates:</b> BBSes were just software running on a server  
<b class="name">Glaucon:</b> right  
<b class="name">Socrates:</b> you still had to connect like Telnet  
<b class="name">Socrates:</b> but it was no more custom than SSH to Netris is "custom" SSH  
<b class="name">Socrates:</b> make sense?  
<b class="name">Socrates:</b> (i.e., it's not at all custom, just instead of launching `bash`, it launches another application)  
<b class="name">Socrates:</b> SSH/Telnet remained unchanged  
<b class="name">Glaucon:</b> right that's what I meant  
<b class="name">Glaucon:</b> you jack into a program as opposed to the terminal [^svt]  

The golden age of email
-----------------------

<b class="name">Socrates:</b> OK, we know how BBSes worked (and are)  
<b class="name">Socrates:</b> let's talk about the birth of email and NNTP  
<b class="name">Socrates:</b> we're going properly back now to pre-ARPANET days  
<b class="name">Socrates:</b> back in the old days, every computer was a universe unto itself---networking didn't exist, and I don't even mean LANs  
<b class="name">Glaucon:</b> well you could have multiple terminals connected to one computer  
<b class="name">Socrates:</b> computers with multiple terminals were really just screens and keyboards with *really* long cables  
<b class="name">Socrates:</b> and terminals weren't computers  
<b class="name">Socrates:</b> they were literally just human interface devices that had serial out the back  
<b class="name">Glaucon:</b> well a teletype could be a terminal  
<b class="name">Glaucon:</b> it's just an access point  
<b class="name">Socrates:</b> you could send "mail" to a user by essentially writing a file, sending it the mail daemon, that could parse and distribute copies of that into people's own home directories, when you couldn't directly  
<b class="name">Socrates:</b> so you could write to Alice and Bob, and the server would insert that mail file into their `~/mbox`  
<b class="name">Socrates:</b> this was good  
<b class="name">Socrates:</b> in fact, this was basically peak email---it's all been downhill ever since  

Cursing daemons
---------------

<b class="name">Glaucon:</b> I understand so far  
<b class="name">Glaucon:</b> but what's a daemon?  
<b class="name">Glaucon:</b> I read that term a few days ago and was like "wat"  

*Surprised by this confession of ignorance, <span class="name">Adeimantus</span> interrupts, attracting the attention of <span class="name">Pyrrhus</span>, another newcomer.*

<b class="name">Adeimantus:</b> "what's a daemon?" *really?*  
<b class="name">Glaucon:</b> okay okay, go on  
<b class="name">Pyrrhus:</b> A daemon is just a program that can run without user input strictly required  
<b class="name">Socrates:</b> a daemon is just server software  
<b class="name">Socrates:</b> `httpd` = http daemon = Apache  
<b class="name">Socrates:</b> etc  
<b class="name">Glaucon:</b> neato  
<b class="name">Socrates:</b> see also: systemd  
<b class="name">Adeimantus:</b> he said the s-word  
<b class="name">Pyrrhus:</b> Inb4 systemD is botnet  
<b class="name">Adeimantus:</b> see, there it goes  

Uni-to-uni copy
---------------

*After a brief scuffle about systemd, <span class="name">Socrates</span>' lesson resumes.*

<b class="name">Socrates:</b> anyway, some bastard decided it would be cool if MIT could speak to Berkeley to share projects, and ARPA (later DARPA) decided "shit man, it would be really cool if we could do this in the military, too"  
<b class="name">Socrates:</b> so ARPA paid a lot of money for research, and experimental campus-to-campus networking that connected MIT to Berkeley to Los Alamos, etc  
<b class="name">Socrates:</b> let me get the map  
<b class="name">Socrates:</b> [https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Arpanet_1974.svg/1920px-Arpanet_1974.svg.png](/assets/img/agora/arpanet-1974.png)  
<b class="name">Socrates:</b> (or [https://upload.wikimedia.org/wikipedia/commons/b/bf/Arpanet_logical_map%2C_march_1977.png](/assets/img/agora/arpanet-1977.png))  
<b class="name">Socrates:</b> this network came about, and someone said, "sure would be cool if I could mail Peter at Berkeley, like I could mail Alice here"  
<b class="name">Socrates:</b> then someone said "well we have this tool called `uucp` [Unix-to-Unix copy, basically the granddaddy of `scp`], and mail messages are just files---why not hack them together?"  
<b class="name">Glaucon:</b> I have a feeling I don't know what `scp` is  
<b class="name">Glaucon:</b> because I'm just thinking of anomalies [^scp]  
<b class="name">Socrates:</b> `cp`, but over SSH  
<b class="name">Glaucon:</b> ah okay  
<b class="name">Socrates:</b> `$ scp dick.png socrates@server.com:pics/`  
<b class="name">Socrates:</b> secure copy (via SSH) `dick.png` into `server.com` in `/home/socrates/pics`  
<b class="name">Glaucon:</b> whatever file you wanted to send  
<b class="name">Glaucon:</b> mail or image or whatever  
<b class="name">Glaucon:</b> `$ uucp meme.png fatso@memes.nerd:memes/`  
<b class="name">Glaucon:</b> or whatever  
<b class="name">Socrates:</b> close enough  
<b class="name">Socrates:</b> now, like I said, it's all starting to get complicated  
<b class="name">Socrates:</b> and this is where NNTP and email begin to diverge  
<b class="name">Socrates:</b> but at this point, sending files and sending emails were one and the same thing: via UUCP  
<b class="name">Socrates:</b> back then routing wasn't that fancy, so you'd say something like `socratespc!freenode!glauconspc!glaucon` to specify the path  
<b class="name">Socrates:</b> but that's besides the point  
<b class="name">Pyrrhus:</b> Works well until the route is 200 computers  
<b class="name">Pyrrhus:</b> `uucp: command not found`  
<b class="name">Pyrrhus:</b> mfw  
<b class="name">Adeimantus:</b> `# apt install uucp`  
<b class="name">Pyrrhus:</b> I'm running Gentoo  
<b class="name">Adeimantus:</b> `# emerge uucp` then, fuck  
<b class="name">Adeimantus:</b> do I have to do everything around here?  

Protocols vs networks
---------------------

<b class="name">Socrates:</b> someone realized that actually being able to have some kind of mailing list where everyone could subscribe would be pretty cool, and you could all message each other on various topics, share files, etc  
<b class="name">Socrates:</b> so they wrote news servers, which were like mail servers, but they handled many *channels* inside of them rather than users, and delivered the contents to users via mail   
<b class="name">Socrates:</b> so `comp.lang.python` would be about computers-&gt;languages-&gt;python  
<b class="name">Socrates:</b> so everyone could shitpost in real time on their local news server  
<b class="name">Socrates:</b> and then, every night, when the lines were open (they were still dial-up style connections, even between universities at the cutting edge of research in those days)  
<b class="name">Socrates:</b> they would connect to their peers and copy the day's news file to everyone else  
<b class="name">Socrates:</b> and those spread throughout the network  
<b class="name">Socrates:</b> eventually, this system grew and developed into a fully defined protocol called NNTP  
<b class="name">Socrates:</b> these individual servers don't *have* to talk to anyone in particular, but the biggest and most commonly used news network was called Usenet  
<b class="name">Glaucon:</b> oh I thought it was like, a protocol  
<b class="name">Glaucon:</b> but it was a specific network  
<b class="name">Glaucon:</b> for news  
<b class="name">Socrates:</b> Usenet is to NNTP as freenode is to IRC  
<b class="name">Glaucon:</b> right  
<b class="name">Glaucon:</b> kinda like how QuakeNet started out being for Quake players to find matches and just became one of the biggest servers over time  
<b class="name">Socrates:</b> right  
<b class="name">Socrates:</b> Usenet was even more dominant though  
<b class="name">Socrates:</b> pretty much the only other networks were tiny  
<b class="name">Socrates:</b> Usenet became *the* network, in the same way that the Internet is *the* inter-network-network  
<b class="name">Glaucon:</b> even though the Internet is just a network, the protocol is HTTP  
<b class="name">Glaucon:</b> but because it's so ubiquitous we think of it as the way of connecting itself sometimes?  
<b class="name">Socrates:</b> well, no, the Internet isn't HTTP; the *web* is  
<b class="name">Glaucon:</b> right right, the world wide web is HTTP  
<b class="name">Socrates:</b> anyway, NNTP went down this whole path by itself, and eventually was entirely diverged, as email made its own evolution from very simple local mail servers into its own fully fledged SMTP system  
<b class="name">Glaucon:</b> so NNTP isn't the protocol we use for email now, SMTP is?  
<b class="name">Socrates:</b> correct. NNTP became specialized in managing news lists, which were basically bundled and federated mailing lists  
<b class="name">Socrates:</b> usually your Usenet address was the same as your email address, back when you were `socrates@aol.com` or whatever  
<b class="name">Socrates:</b> they gave you the same account on both their mail server and their news server  
<b class="name">Socrates:</b> (though you'd usually have to pay extra for them to turn on access to the news server)  
<b class="name">Socrates:</b> (same as if they gave you web space like `http://aol.com/webspaces/~socrates`)  
<b class="name">Glaucon:</b> okay  
<b class="name">Glaucon:</b> so BBS is just a connection to a specific software on a remote computer, email is SMTP used for mailing, and NNTP is a protocol used for news lists?  
<b class="name">Socrates:</b> pretty much  
<b class="name">Glaucon:</b> the Internet is a network, the web is a host of sites that are connected via HTTP, FidoNet is a network of BBSes  
<b class="name">Socrates:</b> BBS is just an interactive (usually bespoke) bit of interactive software you can Telnet to instead of landing in a shell  
<b class="name">Glaucon:</b> a BBS is just software running on a computer? it doesn't refer to the server itself?  
<b class="name">Socrates:</b> correct  
<b class="name">Socrates:</b> BBS is just software, same as an ircd (IRC daemon) (freenode's is called ircd-seven)  
<b class="name">Socrates:</b> Apache's technical name is "HTTPD"  
<b class="name">Glaucon:</b> and Usenet is a network of news lists?  
<b class="name">Socrates:</b> yes  
<b class="name">Glaucon:</b> it just gets confusing because the usage of these things overlap  
<b class="name">Socrates:</b> but the problem is the Internet exists at a layer underpinning all these  

Clue through the labyrinth
--------------------------

<b class="name">Glaucon:</b> So who runs the Internet, exactly?  
<b class="name">Glaucon:</b> Is it DARPA still?  
<b class="name">Socrates:</b> no one, it's a collaboration  
<b class="name">Socrates:</b> the Internet is exactly as it sounds: inter-networked networks  
<b class="name">Glaucon:</b> how are they connected?  
<b class="name">Glaucon:</b> satellites? landlines?  
<b class="name">Socrates:</b> consider a university  
<b class="name">Socrates:</b> it has its own computer. later, it has its own network as they buy several computers and plug them together  
<b class="name">Socrates:</b> we have all these universities, and they have computers that are all linked together  
<b class="name">Socrates:</b> for simplicity, you've given them all unique integer names  
<b class="name">Socrates:</b> so you can `ssh socrates@1` to get to server 1  
<b class="name">Socrates:</b> it would be nice to connect this network to another university's network, so you plug all the computers together  
<b class="name">Socrates:</b> and you'll remember a while back I mentioned that you would route between computers with UUCP like `socrates!socratespc!freenode!glauconspc!glaucon`?  
<b class="name">Socrates:</b> my uni doesn't have a direct link to your uni   
<b class="name">Socrates:</b> so we need to bounce through some intermediary, possibly several, to get to your PC  
<b class="name">Socrates:</b> in fact, let's do an experiment now  
<b class="name">Socrates:</b> pop a shell, and `traceroute 8.8.8.8` (the Google DNS server)  
<b class="name">Glaucon:</b> uhh, not a command I have  
<b class="name">Glaucon:</b> I'm on Windows 10 right now  
<b class="name">Socrates:</b> OK, give me a moment  
<b class="name">Socrates:</b> err  
<b class="name">Socrates:</b> `tracert 8.8.8.8`  
<b class="name">Socrates:</b> in `cmd.exe`  
<b class="name">Socrates:</b> you should get something like this:  

	C:\Users\Socrates>tracert 8.8.8.8
	
	Tracing route to dns.google [8.8.8.8]
	over a maximum of 30 hops:
	
	  1     1 ms     1 ms     2 ms  192.0.2.254
	  2    17 ms    36 ms     1 ms  203-0-113-214.example.net [203.0.113.214]
	  3     2 ms     1 ms     1 ms  203-0-113-17.fglt.nl.example.net [203.0.113.17]
	  4    11 ms    13 ms    11 ms  203-0-113-18.fglt.nl.example.net [203.0.113.18]
	  5    43 ms    43 ms    43 ms  198.51.100.179
	  6    45 ms    44 ms    44 ms  198.51.100.178
	  7    43 ms    44 ms    44 ms  198.51.100.1
	  8    45 ms    44 ms    45 ms  dns.google [8.8.8.8]
	
	Trace complete.

<b class="name">Glaucon:</b> is this all the nodes my PC has to get through to, for example, ping Google's DNS?  
<b class="name">Socrates:</b> yes  
<b class="name">Socrates:</b> we'll rename nodes soon, and it'll make more sense  
<b class="name">Socrates:</b> so, we're back in the day, and everyone can just remember that to get from my computer to someone else's, we need to jump through these servers  
<b class="name">Socrates:</b> in the end, the network kept growing, so they decided that some other method would have to be done  
<b class="name">Glaucon:</b> At first, there's a few computers, and only a few directories you'll be sending to, and it's easy to do it manually  
<b class="name">Glaucon:</b> but as the network grows, it needs to be automated, and there needs to be standardized targets for files to be sent to?  
<b class="name">Socrates:</b> so everyone had these local campus networks where every computer had a locally unique number as a name  
<b class="name">Socrates:</b> only 1 computer, probably the oldest one, actually connected to peers  
<b class="name">Socrates:</b> when things got bigger, we decided that we'd say "this central computer (5) can see computers 9, 17, 12, and 3 on its own network"  
<b class="name">Socrates:</b> and it would tell the other computers it connected to at other campuses this  
<b class="name">Glaucon:</b> tells them how?  
<b class="name">Socrates:</b> just, magically for now  
<b class="name">Glaucon:</b> alright  
<b class="name">Socrates:</b> say, MIT's central computer was 91  
<b class="name">Socrates:</b> someone on machine 92 at MIT asks 91, its gateway computer, to send an email to `socrates@9`  
<b class="name">Socrates:</b> MIT looks up all the announcements it has seen, and notices that the last computer that announced 9 was 5, my university's gateway  
<b class="name">Socrates:</b> so it sets up the link 92---91---5---9  
<b class="name">Socrates:</b> so my friend's PC---MIT gateway---Athens gateway---Socrates' PC  
<b class="name">Socrates:</b> now, here's the big jump  
<b class="name">Socrates:</b> Berkeley is way out in California, it's several times as far from Athens as MIT is  
<b class="name">Socrates:</b> I'm never going to connect to California directly  
<b class="name">Socrates:</b> however, Berkeley to MIT is a connection that *does* exist  
<b class="name">Socrates:</b> Berkeley is, say, 173, and has 174--179  
<b class="name">Socrates:</b> it announces to all its peers, including MIT (91), that it hosts 174--179  
<b class="name">Socrates:</b> when I want to email `glaucon@175` from `socrates@9`, this is what happens:  
<b class="name">Socrates:</b> 9 asks 5 (Athens gateway) for 174  
<b class="name">Socrates:</b> 5 (Athens gateway) doesn't have it, so it looks towards its peers to see if they know  
<b class="name">Socrates:</b> none of them do, but 92 (MIT) says "ah yeah, I have a peer, 173 (Berkeley) that has 175; send it through me"  
<b class="name">Socrates:</b> so it goes `socrates@9`---5 (Athens)---91 (MIT)---173 (Berkeley)---`glaucon@174`  
<b class="name">Socrates:</b> these numbers are the names of the nodes you see in `tracert`  
<b class="name">Socrates:</b> they are Inter-net[work] Protocol addresses  
<b class="name">Socrates:</b> routers are gateways that sit on the borders of their own networks and connect to computers that likewise sit at the border of their own network  
<b class="name">Socrates:</b> in this case, 5, 91, and 173 for the routers at Athens, MIT, and Berkeley, and they announce the IPs they host, as well as the networks their peers host, and that their peers' peers host  

I know a guy who knows a guy
----------------------------

<b class="name">Glaucon:</b> so in the early days, did computers connected to these networks have routers?  
<b class="name">Glaucon:</b> or was it software?  
<b class="name">Glaucon:</b> For example, having the gateway computer handle the routing, as opposed to a designated single router  
<b class="name">Socrates:</b> in the early days, every computer was general  
<b class="name">Socrates:</b> so you'd have a computer that was your computer to do stuff on via a serial terminal  
<b class="name">Socrates:</b> that computer had a mail server for sending mail to other users on that server  
<b class="name">Glaucon:</b> So could I theoretically use a router as a computer?  
<b class="name">Socrates:</b> yes  
<b class="name">Glaucon:</b> neato  
<b class="name">Socrates:</b> and vice versa, your laptop could be a router  
<b class="name">Socrates:</b> all at same time as normal  
<b class="name">Glaucon:</b> right, kinda like using your phone as a hotspot?  
<b class="name">Socrates:</b> yeah  
<b class="name">Socrates:</b> its all just software  
<b class="name">Glaucon:</b> right right  
<b class="name">Glaucon:</b> routing software  
<b class="name">Socrates:</b> so we have local networks, where some machines on those networks are connected deeply to their own network, but also to the borders of other networks, acting as gateways  
<b class="name">Socrates:</b> the protocol they use to *announce* these links and the routes that you can use to get from one computer to another, is called BGP, the Border Gateway Protocol  
<b class="name">Socrates:</b> each BGP peer has an Autonomous System Number---don't worry about the name on that one---and they announce the IP prefixes they can route to  
<b class="name">Socrates:</b> each ISP is allotted a certain group of IPs  
<b class="name">Socrates:</b> say 203.0.113.1--255  
<b class="name">Socrates:</b> so they host the prefix 203.0.113.0/24 (24 bits i.e. 3x bytes 203.0.113 and then 8 bits left at the end)  
<b class="name">Glaucon:</b> and whoever they provide Internet service to, gets assigned an IP?  
<b class="name">Socrates:</b> yes  
<b class="name">Socrates:</b> they say to their peers, "I'm AS64501, and I host 203.0.113.0/24"  
<b class="name">Socrates:</b> so all the other routers they are connected to know that 203.0.113.99 is by that router  
<b class="name">Socrates:</b> they can also announce to their peers the router downstream of them  
<b class="name">Socrates:</b> so say you have AS64502---AS64503---AS64504  
<b class="name">Socrates:</b> AS64502 says "I have 203.0.113.0/24" to AS64503  
<b class="name">Socrates:</b> AS64503 says to AS64504: "I have 198.51.100.0/24, also 203.0.113.0/24 [as a downstream peer]"  
<b class="name">Socrates:</b> so now AS64504 knows that if they want to get 198.51.100.15, that goes to AS64503  
<b class="name">Socrates:</b> if they want to get 203.0.113.99, they send it to AS64503 as well, who knows to send it to AS64502, who has the IP proper  
<b class="name">Glaucon:</b> so an ISP is like a general gateway?  
<b class="name">Glaucon:</b> and BGP is the protocol that links ISPs together?  
<b class="name">Socrates:</b> an ISP is just one kind of network, usually selling access to their network, but more importantly to the rest of the Internet, via their router  
<b class="name">Socrates:</b> this is how the chain in `tracert` output is formed  
<b class="name">Glaucon:</b> you could use a ham radio's server as an "ISP" if you wanted  
<b class="name">Socrates:</b> yep, and people do  
<b class="name">Socrates:</b> in fact, a lot of finance companies have radio networks  
<b class="name">Socrates:</b> the point is that the Internet doesn't really care about the physical medium  
<b class="name">Socrates:</b> you can route over Ethernet, radio, fiber-optic, or printed-out packet data, scanned, after being transported by pigeon  
<b class="name">Glaucon:</b> IPoAC [^ioa]  
<b class="name">Socrates:</b> right  
<b class="name">Socrates:</b> all that needs to happen is that routers can resolve a route from beginning to end via the IP prefixes they know about  
<b class="name">Glaucon:</b> it just cares about the protocol?  
<b class="name">Socrates:</b> "the" protocol?  
<b class="name">Glaucon:</b> BGP? You mentioned it, and didn't explain it  
<b class="name">Glaucon:</b> you said BGP is to the Internet as HTTP is to the web  
<b class="name">Socrates:</b> right. you asked earlier "how do routers tell each other what IPs they have"  
<b class="name">Socrates:</b> BGP is the protocol that routers use to announce to their peers what IPs they own or can reach on their behalf  
<b class="name">Glaucon:</b> so let's say my router is connected to my next door neighbor's router  
<b class="name">Glaucon:</b> we're crazy and we physically connected them with a very long cable  
<b class="name">Socrates:</b> that's how most of the world does it  
<b class="name">Socrates:</b> very long cables across the ocean  
<b class="name">Glaucon:</b> let's say he has two computers in connected to his router  
<b class="name">Glaucon:</b> I'm gonna send an email, but not to my friend  
<b class="name">Glaucon:</b> I'm gonna send it to someone in Zimbabwe  
<b class="name">Glaucon:</b> I send the email  
<b class="name">Glaucon:</b> Does my router, ask both my friend's router, as well as the ISP's gateway about that IP I'm looking for?  
<b class="name">Glaucon:</b> does it contact every gateway it's directly connected to, and whichever does actually have the gateway responds?  
<b class="name">Glaucon:</b> and what if I want to connect directly to my friend, and I can connect directly through his router, or by going through the ISP and back, can my router figure out that one router has a shorter route, and automatically chose that?  

Mr. Osborne, may I be excused?
------------------------------

<b class="name">Socrates:</b> you'll notice so far that everything I've spoken about so far has a linear network  
<b class="name">Socrates:</b> everyone has at most 2 router peers—their left and their right  
<b class="name">Socrates:</b> really this needs a diagram  
<b class="name">Socrates:</b> want me to make one up for you?  
<b class="name">Socrates:</b> it'll help a lot  

*Despite his litany of questions, <span class="name">Glaucon</span> suddenly realises he is exhausted.*

<b class="name">Glaucon:</b> Uhh, can we do this in the morning  
<b class="name">Glaucon:</b> I'm extremely curious  
<b class="name">Socrates:</b> I'm glad  
<b class="name">Glaucon:</b> and having trouble keeping my eyes open  
<b class="name">Socrates:</b> BGP is the biggest monster on the Internet  
<b class="name">Socrates:</b> everyone has been hiding under the covers and pretending its not under the bed  
<b class="name">Socrates:</b> for years  
<b class="name">Socrates:</b> and you'll see why tomorrow  
<b class="name">Glaucon:</b> Well, it's rare I get someone so knowledgeable that's so willing to share  

*<span class="name">Glaucon</span> says his goodbyes, and leaves the agora for bed.*

Epilogue
--------

*Later that evening, <span class="name">Socrates</span> speaks to <span class="name">Thrasymachus</span>.*

<b class="name">Socrates:</b> did you see my BGP explainer earlier?  
<b class="name">Thrasymachus:</b> Yeah but I haven't read it thoroughly  
<b class="name">Socrates:</b> probably for the best  
<b class="name">Thrasymachus:</b> No, I'll read it, a) don't assume I know a lot, b) even if I did notice something wrong, it's not like he's not getting amazing value for money  
<b class="name">Socrates:</b> tbh its close enough anyway  
<b class="name">Thrasymachus:</b> I do soak up some BGP stuff, but mostly they keep me out of it and firmly at a command line  
<b class="name">Thrasymachus:</b> People get high-paying jobs basically out of making BGP work properly  
<b class="name">Socrates:</b> I've touched BGP once, and it was not a good experience  
<b class="name">Thrasymachus:</b> Yeah...  
<b class="name">Socrates:</b> even the experienced guy was like "tbh we'll see what happens if we make the news for blackholing the city"  
<b class="name">Thrasymachus:</b> Yeah.  

[^bsd]: An [implementation of *Tetris*](https://www.invidio.us/watch?v=RI64hStZ7mU) available on BSD that runs in a terminal.
[^sep]: In 1993, America Online's aggressively marketed consumer internet plans led to a massive influx of new users to Usenet that overwhelmed the established culture there.  This is generally referred to as ["the September that never ended"](https://en.wikipedia.org/wiki/Eternal_September), named for the month in which a more manageable influx of new users joining from American universities had been expected in prior years.
[^svt]: Glaucon very likely means "...as opposed to *a command-line shell*", such as Bash or Korn shell.
[^scp]: An allusion to the [*SCP Foundation*](https://en.wikipedia.org/wiki/SCP_Foundation), a collaborative horror/science fiction project.
[^ioa]: [Internet Protocol over Avian Carriers](https://en.wikipedia.org/wiki/IP_over_Avian_Carriers), an April Fool's Day "Request For Comment" (a de-facto internet standard), [RFC 1149](https://tools.ietf.org/html/rfc1149).  While very tongue-in-cheek, the protocol does actually work, and neatly demonstrates the principle of the Internet's independence from physical transmission media.
