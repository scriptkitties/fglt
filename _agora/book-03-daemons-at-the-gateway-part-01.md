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

* **Glaucon:** A Cretin visitor to the agora, with grand ideals of freedom and minimalism in computing
* **Socrates:** Famed philosopher-engineer of Athens
* **Adeimantus:** A Cretin regular
* **Thrasymachus:** An Ithacan regular
* **Pyrrhus:** An eccentric Epirote who first visited the agora around the same time as Glaucon

Prelude
-------

**Glaucon:** Socrates, do you know what FidoNet and Usenet are?  
**Socrates:** yes  
**Glaucon:** what's the difference between them?  
**Glaucon:** I still don't understand  
**Socrates:** Usenet was a network of NNTP servers  
**Socrates:** FidoNet was a network of bulletin board systems  
**Socrates:** NNTP is a sister protocol to email, which had shared roots in using what was basically SCP to copy people's mail and files around  
**Socrates:** BBSes were basically someone who said "what if I put a custom login shell on my home SSH connection a la netris.rocketnine.space  
**Glaucon:** but I've heard people use FidoNet to connect to Usenet?  
**Socrates:** yes, in the same way that you can use some SSH shell server to connect to IRC  
**Socrates:** NNTP services were not something afforded to home users at the beginning of the Internet  
**Socrates:** so a BBS service that did have access to Usenet was a good springboard  
**Socrates:** that some of these BBS services peered with each other is separate  
**Glaucon:** right, BBS was a weird custom connection to a server which had email and connections with other users and stuff, but you couldn't just Telnet in usually, you needed the software  
**Socrates:** no  
**Glaucon:** I'm lost then  
**Glaucon:** go on  

A strange game
--------------

**Socrates:** `$ ssh netris.rocketnine.space`  
**Socrates:** enjoy a game, get back to me in 5  
**Adeimantus:** wow, better than BSD `tetris`  
**Thrasymachus:** Cool  
**Socrates:** Glaucon: good, right?  
**Glaucon:** I didn't know you could do something like this with SSH  
**Glaucon:** the latency is non-existent  
**Socrates:** OK  
**Socrates:** anyway  
**Socrates:** imagine now that you did this via Telnet  
**Socrates:** and imagine instead of Tetris it was something like a modern (well, late 00s I guess now) web forum  
**Glaucon:** was I supposed to play multiplayer to test  
**Socrates:** I don't really care as long as you get the picture  
**Socrates:** this is what a BBS was  
**Adeimantus:** except with awesome ASCII art  
**Socrates:** yes, in the late BBS age, there were experiments in using other protocols, usually for more advanced graphical capabilities  
**Socrates:** FidoNet likewise was a popular experiment, but an experiment nonetheless  
**Glaucon:** even with stronger PCs, I still don't get it  
**Glaucon:** why did we stop?  
**Socrates:** AOL, basically  

The genealogy of network forums
-------------------------------

**Socrates:** BBSes still exist to this day  
**Socrates:** firstly as web forums  
**Socrates:** now as Reddit  
**Glaucon:** neat  
**Socrates:** there are still some hangers-on who use ye olde style BBSes, but Reddit is a direct descendant, via web forums  
**Glaucon:** so Usenet is sort of like a more versatile FidoNet?  
**Socrates:** no  
**Glaucon:** uhh  
**Glaucon:** I still don't get how they relate  
**Socrates:** they don't  
**Glaucon:** so that Tetris game was supposed to be FidoNet?  
**Glaucon:** or Usenet?  
**Socrates:** BBS  
**Glaucon:** oh okay  
**Socrates:** of which FidoNet was an overlaid network  
**Socrates:** BBS were like forums  
**Glaucon:** BBS is a custom Telnet, FidoNet was a network of them, and Usenet is more like proto-Internet  
**Socrates:** no  
**Socrates:** Glaucon: BBSes were just software running on a server  
**Glaucon:** but that's an accurate description of BBS?  
**Glaucon:** right  
**Socrates:** you still had to connect like Telnet  
**Socrates:** but it was no more custom than SSH to Netris is "custom" SSH  
**Socrates:** make sense?  
**Socrates:** (i.e., it's not at all custom, just instead of launching `bash`, it launches another application)  
**Socrates:** SSH/telnet remained unchanged  
**Glaucon:** right that's what I meant  
**Glaucon:** you jack into a program as opposed to the terminal  

The golden age of email
-----------------------

**Socrates:** OK, we know how BBSes worked (and are)  
**Socrates:** let's talk about the birth of email and NNTP  
**Socrates:** we're going properly back now to pre-ARPANET days  
**Socrates:** back in the old days, every computer was a universe unto itself---networking didn't exist, and I don't even mean LANs  
**Glaucon:** well you could have multiple terminals connected to one computer  
**Socrates:** computers with multiple terminals were really just screens and keyboards with *really* long cables  
**Socrates:** and terminals weren't computers  
**Socrates:** they were literally just HID devices that had serial out the back  
**Glaucon:** well a teletype could be a terminal  
**Glaucon:** it's just an access point  
**Socrates:** you could send "mail" to a user by essentially writing a file, sending it the mail daemon, that could parse and distribute copies of that into people's own home directories, when you couldn't directly  
**Socrates:** so you could write to Alice and Bob, and the server would insert that mail file into their `~/maildir`  
**Socrates:** this was good  
**Socrates:** in fact, this was basically peak email---it's all been downhill ever since  

Cursing daemons
---------------

**Glaucon:** I understand so far  
**Glaucon:** but what's a daemon?  
**Glaucon:** I still don't quite understand  
**Socrates:** a daemon is just server software  
**Pyrrhus:** A daemon is just a program that can run without user input strictly required  
**Glaucon:** I read that term a few days ago and was like "wat"  
**Adeimantus:** what's a daemon? really?  
**Glaucon:** okay okay, go on  
**Socrates:** `httpd` = http daemon = Apache  
**Socrates:** etc  
**Glaucon:** neato  
**Socrates:** see also systemd  
**Adeimantus:** he said the s-word  
**Pyrrhus:** Inb4 systemD is botnet  
**Adeimantus:** see, there it goes  

Uni-to-uni copy
---------------

**Socrates:** anyway, some bastard decided it would be cool if MIT could speak to Berkeley to share projects, and ARPA (later DARPA) decided "shit man, it would be really cool if we could do this in the military, too"  
**Socrates:** so ARPA paid a lot of money for research, and experimental campus-to-campus networking that connected MIT to Berkeley to Los Alamos, etc  
**Socrates:** let me get the map  
**Socrates:** <https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Arpanet_1974.svg/1920px-Arpanet_1974.svg.png>  
**Socrates:** (or <https://upload.wikimedia.org/wikipedia/commons/b/bf/Arpanet_logical_map%2C_march_1977.png>)  
**Socrates:** this network came about, and someone said, "sure would be cool if I could mail Peter at Berkeley, like I could mail Alice here"  
**Socrates:** then someone said "well we have this tool called `uucp` [Unix-to-Unix copy, basically the granddaddy of `scp`], and mail messages are just files---why not hack them together?"  
**Glaucon:** I have a feeling I don't know what `scp` is  
**Glaucon:** because I'm just thinking of anomalies  
**Socrates:** `cp`, but over SSH  
**Glaucon:** ah okay  
**Socrates:** `$ scp dick.png socrates@server.com:pics/`  
**Socrates:** secure copy (via SSH) `dick.png` into `server.com` in `/home/socrates/pics`  
**Glaucon:** whatever file you wanted to send  
**Glaucon:** mail or image or whatever  
**Glaucon:** `$ uucp meme.png fatso@memes.nerd:memes/`  
**Glaucon:** or whatever  
**Socrates:** close enough  
**Socrates:** now, like I said, it's all starting to get complicated  
**Socrates:** and this is where NNTP and email begin to diverge  
**Socrates:** but at this point, sending files and sending emails were one and the same thing: via UUCP  
**Socrates:** back then routing wasn't that fancy, so you'd say something like `socratespc!freenode!glauconspc!glaucon` to specify the path  
**Socrates:** but that's besides the point  
**Pyrrhus:** Works well until the route is 200 computers  
**Pyrrhus:** `uucp: command not found`  
**Pyrrhus:** mfw  
**Adeimantus:** `# apt install uucp`  
**Pyrrhus:** I'm running Gentoo  
**Adeimantus:** `# emerge uucp` then, fuck  
**Adeimantus:** do I have to do everything around here?  

Protocols vs networks
---------------------

**Socrates:** someone realized that actually being able to have some kind of mailing list where everyone could subscribe would be pretty cool, and you could all message each other on various topics, share files, etc  
**Socrates:** so they wrote news servers, which were like mail servers, but they handled many channels inside of them rather than users, and delivered the contents to users via mail   
**Socrates:** so `comp.lang.python` would be about computers-&gt;languages-&gt;python  
**Socrates:** so everyone could shitpost in real time on their local news server  
**Socrates:** and then, every night, when the lines were open (they were still dial-up style connections, even between unis at the cutting edge of research in those days)  
**Socrates:** they would connect to their peers and copy the day's news file to everyone else  
**Socrates:** and those spread throughout the network  
**Socrates:** eventually, this system grew and developed into a fully defined protocol called NNTP  
**Socrates:** these individual servers don't *have* to talk to anyone in particular, but the biggest and most commonly used news network was called Usenet  
**Glaucon:** oh I thought it was like, a protocol  
**Glaucon:** but it was a specific network  
**Glaucon:** for news  
**Socrates:** Usenet is to NNTP as freenode is to IRC  
**Glaucon:** right  
**Glaucon:** kinda like how QuakeNet started out being for Quake players to find matches and just became one of the biggest servers over time  
**Socrates:** right  
**Socrates:** Usenet was even more dominant though  
**Socrates:** pretty much the only other networks were tiny  
**Socrates:** Usenet became *the* network, in the same way that The Internet is *the* inter-network-network  
**Glaucon:** even though the Internet is just a network, the protocol is HTTP  
**Glaucon:** but because it's so ubiquitous we think of it as the way of connecting itself sometimes  
**Socrates:** well, no, the Internet isn't HTTP; the *web* is  
**Glaucon:** right right, the world wide web is HTTP  
**Socrates:** anyway, NNTP went down this whole path by itself, and eventually was entirely diverged, as email made its own evolution from very simple local mail servers into its own fully fledged SMTP system  
**Glaucon:** so NNTP isn't the protocol we use for email now, SMTP is?  
**Socrates:** correct. NNTP became specialized in managing mailing lists, which were basically bundled and federated mailing lists  
**Socrates:** usually your Usenet address was the same as your email address, back when you were `socrates@aol.com` or whatever  
**Socrates:** they gave you the same account on both their mail server and their news server  
**Socrates:** (though you'd usually have to pay extra for them to turn on access to the news server)  
**Socrates:** (same as if they gave you web space like `http://aol.com/webspaces/~socrates`)  
**Glaucon:** okay  
**Glaucon:** so BBS is just a connection to a specific software on a remote computer, email is SMTP used for mailing, and NNTP is a protocol used for news lists?  
**Socrates:** pretty much  
**Glaucon:** the Internet is a network, the web is a host of sites that are connected via HTTP, FidoNet is a network of BBSes  
**Socrates:** BBS is just an interactive (usually bespoke) bit of interactive software you can Telnet to instead of landing in a shell  
**Glaucon:** a BBS is just software running on a computer? it doesn't refer to the server itself?  
**Socrates:** correct  
**Socrates:** BBS is just software, same as an ircd (IRC daemon) (freenode's is called ircd-seven)  
**Socrates:** Apache's technical name is "HTTPD"  
**Glaucon:** and Usenet is a network of news lists?  
**Socrates:** yes  
**Glaucon:** it just gets confusing because the usage of these things overlap  
**Socrates:** but the problem is The Internet exists at a layer underpinning all these  

Clue through the labyrinth
--------------------------

**Glaucon:** So who runs the Internet, exactly?  
**Glaucon:** Is it DARPA still?  
**Socrates:** no one, it's a collaboration  
**Socrates:** the Internet is exactly as it sounds: inter-networked networks  
**Glaucon:** how are they connected?  
**Glaucon:** satellites? landlines?  
**Socrates:** consider a university  
**Socrates:** it has its own computer. later, it has its own network as they buy several computers and plug them together  
**Socrates:** we have all these universities, and they have computers that are all linked together  
**Socrates:** for simplicity, you've given them all unique integer names  
**Socrates:** so you can `ssh socrates@1` to get to server 1  
**Socrates:** it would be nice to connect this network to another university's network, so you plug all the computers together  
**Socrates:** and you'll remember a while back I mentioned that you would route between computers with UUCP like `socrates!socratespc!freenode!glauconspc!glaucon`?  
**Socrates:** my uni doesn't have a direct link to your uni   
**Socrates:** so we need to bounce through some intermediary, possibly several, to get to your PC  
**Socrates:** in fact, let's do an experiment now  
**Socrates:** pop a shell, and `traceroute 8.8.8.8` (the Google DNS server)  
**Glaucon:** uhh, not a command I have  
**Glaucon:** I'm on Windows 10 right now  
**Socrates:** OK, give me a moment  
**Socrates:** err  
**Socrates:** `tracert 8.8.8.8`  
**Socrates:** in `cmd.exe`  
**Socrates:** you should get something like this:  

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

**Glaucon:** is this all the nodes my PC has to get through to, for example, ping Google's DNS?  
**Socrates:** yes  
**Socrates:** we'll rename nodes soon, and it'll make more sense  
**Socrates:** so, we're back in the day, and everyone can just remember that to get from my computer to someone else's, we need to jump through these servers  
**Socrates:** in the end, the network kept growing, so they decided that some other method would have to be done  
**Glaucon:** At first, there's a few computers, and only a few directories you'll be sending to, and it's easy to do it manually  
**Glaucon:** but as the network grows, it needs to be automated, and there needs to be standardized targets for files to be sent to?  
**Socrates:** so everyone had these local campus networks where every computer had a locally unique number as a name  
**Socrates:** only 1 computer, probably the oldest one, actually connected to peers  
**Socrates:** when things got bigger, we decided that we'd say "this central computer (5) can see computers 9, 17, 12, and 3 on its own network"  
**Socrates:** and it would tell the other computers it connected to at other campuses this  
**Glaucon:** tells them how?  
**Socrates:** just, magically for now  
**Glaucon:** alright  
**Socrates:** say, MIT's central computer was 91  
**Socrates:** someone on machine 92 at MIT asks 91, its gateway computer to send an email to `socrates@9`  
**Socrates:** MIT looks up all the announcements it has seen, and notices that the last person who announced 9 was 5, my university's gateway  
**Socrates:** so it sets up the link 92---91---5---9  
**Socrates:** so my friend's PC---MIT gateway---Athens gateway---Socrates' PC  
**Socrates:** now, here's the big jump  
**Socrates:** Berkeley is way out in California, it's several times as far from Athens as MIT is  
**Socrates:** I'm never going to connect to California directly  
**Socrates:** however, Berkeley to MIT is a connection that *does* exist  
**Socrates:** Berkeley is, say, 173, and has 174--179  
**Socrates:** it announces to all its peers, including MIT (91), that it hosts 174--179  
**Socrates:** when I want to email `glaucon@175` from `socrates@9`, this is what happens:  
**Socrates:** 9 asks 5 (Athens gateway) for 174. 5 (Athens gateway) doesn't have it, so it looks towards its peers to see if they know. none of them do, but 92 (MIT) says "ah yeah, I have a peer, 173 (Berkeley) that has 175, send it through me"  
**Socrates:** so it goes `socrates@9`---5 (Athens)---91 (MIT)---173 (Berkeley)---`glaucon@174`  
**Socrates:** these numbers are the names of the nodes you see in `tracert`  
**Socrates:** they are Inter-net[work] Protocol addresses  
**Socrates:** routers are gateways that sit on the borders of their own networks and connect to computers that likewise sit at the border of their own network  
**Socrates:** in this case, 5, 91, and 173 for the routers at Athens, MIT, and Berkeley, and they announce the IPs they host, as well as the networks their peers host, and that their peers' peers host  

I know a guy who knows a guy
----------------------------

**Glaucon:** so in the early days, did computers connected to these networks have routers?  
**Glaucon:** or was it software?  
**Glaucon:** For example, having the gateway computer handle the routing, as opposed to a designated single router  
**Socrates:** in the early days, every computer was general  
**Socrates:** so you'd have a computer that was your computer to do stuff on via a serial terminal  
**Socrates:** that computer had a mail server for sending mail to other users on that server  
**Glaucon:** So could I theoretically use a router as a computer?  
**Socrates:** yes  
**Glaucon:** neato  
**Socrates:** and vice versa, your laptop could be a router  
**Socrates:** all at same time as normal  
**Glaucon:** right, kinda like using your phone as a hotspot?  
**Socrates:** yeah  
**Socrates:** its all just software  
**Glaucon:** right right  
**Glaucon:** routing software  
**Socrates:** so we have local networks, where some machines on those networks are connected deeply to their own network, but also to the borders of other networks, acting as gateways  
**Socrates:** the protocol they use to *announce* these links and the routes that you can use to get from one computer to another, is called BGP, the Border Gateway Protocol  
**Socrates:** each BGP peer has as Autonomous System Number---don't worry about the name on that one---and they announce the IP prefixes they can route to  
**Socrates:** each ISP is allotted a certain group of IPs  
**Socrates:** say 1.2.3.1--255  
**Socrates:** so they host the prefix 1.2.3.0/24 (24 bits i.e. 3x bytes 1.2.3 and then 8 bits left at the end)  
**Glaucon:** and whoever they provide Internet service to, gets assigned an IP  
**Socrates:** yes  
**Socrates:** they say to their peers, "I'm AS25178, and I host 1.2.3.0/24"  
**Socrates:** so all the other routers they are connected to know that 1.2.3.99 is by that router  
**Socrates:** they can also announce to their peers the router downstream of them  
**Socrates:** so say you have AS75---AS192---AS1  
**Socrates:** AS75 says "I have 1.2.3.0/24" to AS192  
**Socrates:** AS192 says to AS1: "I have 9.8.7.0/24, also 1.2.3.0/24 [as a downstream peer]"  
**Socrates:** so now AS1 knows that if they want to get 9.8.7.15, that goes to AS192  
**Socrates:** if they want to get 1.2.3.99, they send it to AS192 as well, who knows to send it to AS75, who has the IP proper  
**Glaucon:** so an ISP is like a general gateway?  
**Glaucon:** and BGP is the protocol that links ISPs together?  
**Socrates:** an ISP is just one kind of network, usually selling access to their network, but more importantly to the rest of the Internet, via their router  
**Socrates:** this is how the chain in `tracert` output is formed  
**Glaucon:** you could use a ham radio's server as an "ISP" if you wanted  
**Socrates:** yep, and people do  
**Socrates:** in fact, a lot of finance companies have radio networks  
**Socrates:** the point is that the Internet doesn't really care about the physical medium  
**Socrates:** you can route over Ethernet, radio, fiber-optic, or printed out packet data scanned after being transported by pigeon  
**Glaucon:** IPoAC  
**Socrates:** right  
**Socrates:** all that needs to happen is that routers can resolve a route from beginning to end via the IP prefixes they know about  
**Glaucon:** it just cares about the protocol?  
**Socrates:** "the" protocol?  
**Glaucon:** BGP? You mentioned it, and didn't explain it  
**Glaucon:** you said BGP is to the Internet as HTTP is to the web  
**Socrates:** right. you asked earlier "how do routers tell each other what IPs they have"  
**Socrates:** BGP is the protocol that routers use to announce to their peers what IPs they own or can reach on their behalf  
**Glaucon:** so let's say my router is connected to my next door neighbor's router  
**Glaucon:** we're crazy and we physically connected them with a very long cable  
**Socrates:** that's how most of the world does it  
**Socrates:** very long cables across the ocean  
**Glaucon:** let's say he has two computers in connected to his router  
**Glaucon:** I'm gonna send an email, but not to my friend  
**Glaucon:** I'm gonna send it to someone in Zimbabwe  
**Glaucon:** I send the email  
**Glaucon:** Does my router, ask both my friend's router, as well as the ISPs' gateway about that IP I'm looking for?  
**Glaucon:** does it contact every gateway it's directly connected to, and whichever does actually have the gateway responds?  
**Glaucon:** and what if I want to connect directly to my friend, and I can connect directly through his router, or by going through the ISP and back, can my router figure out that one router has a shorter route, and automatically chose that?  

Mr. Osborne, may I be excused?
------------------------------

**Socrates:** you'll notice so far that everything I've spoken about so far has a linear network  
**Socrates:** everyone has at most 2 router peers—their left and their right  
**Socrates:** really this needs a diagram  
**Socrates:** want me to make one up for you?  
**Socrates:** it'll help a lot  
**Glaucon:** Uhh, can we do this in the morning  
**Glaucon:** I'm extremely curious  
**Socrates:** I'm glad  
**Glaucon:** and having trouble keeping my eyes open  
**Socrates:** BGP is the biggest monster on the Internet  
**Glaucon:** Well, it's rare I get someone so knowledgeable that's so willing to share  
**Socrates:** everyone has been hiding under the covers and pretending its not under the bed  
**Socrates:** for years  
**Socrates:** and you'll see why tomorrow  

Epilogue
--------

**Socrates:** Thrasymachus: did you see my BGP explainer earlier?  
**Thrasymachus:** Yeah but I haven't read it thoroughly  
**Socrates:** probably for the best  
**Thrasymachus:** No, I'll read it, a) don't assume I know a lot, b) even if I did notice something wrong, it's not like he's not getting amazing value for money  
**Socrates:** tbh its close enough anyway  
**Thrasymachus:** I do soak up some BGP stuff, but mostly they keep me out of it and firmly at a command line  
**Thrasymachus:** People get high-paying jobs basically out of making BGP work properly  
**Socrates:** I've touched BGP once, and it was not a good experience  
**Thrasymachus:** Yeah...  
**Socrates:** even the experienced guy was like "tbh we'll see what happens if we make the news for blackholing the city"  
**Thrasymachus:** Yeah.  
