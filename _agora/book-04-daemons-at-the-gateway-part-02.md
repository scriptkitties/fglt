---
title: Book IV—Daemons at the Gateway—Part 2
description: Socrates' lesson on internet routing continues, with the demonstration of something much closer to a real-world BGP-routed IPv4 network internet.
date: 2020-08-06 00:00:00 UTC
section: agora
layout: default
---

Introduction
------------

Having left their dialogue on internet routing from the previous day
unfinished, Glaucon returns to the agora, refreshed from his night's sleep,
although he finds his teacher is absent for the time being.  When Socrates does
arrive, the lesson resumes directly, and Socrates' examples for demonstrating
the concepts of routing become both more concrete and more modern.

Dramatis personae
-----------------

In order of appearance:

* <span class="name">Glaucon:</span> A Cretin visitor to the agora, with grand ideals of freedom and minimalism in computing, and by now a regular and eager student of Socrates
* <span class="name">Thrasymachus:</span> An Ithacan regular
* <span class="name">Pyrrhus:</span> An eccentric Epirote who first visited the agora around the same time as Glaucon
* <span class="name">Adeimantus:</span> A Cretin regular
* <span class="name">Socrates:</span> Famed philosopher-engineer of Athens
* <span class="name">Cephalus:</span> Another Cretin regular

Prelude
-------

*A new day has dawned on the agora.  <span class="name">Glaucon</span> is speaking with <span class="name">Thrasymachus</span> about some stickers he was planning to order from an online vendor, depicting the titular character from <cite>Sailor Moon</cite> holding a floppy disk and warning that [she does not know how to use a computer](https://www.hellovoid.online/product/i-don-t-know-how-to-use-a-computer-vinyl-sticker).  Thrasymachus is weary from some long nights working on mail servers with the Corinthians.*

<b class="name">Glaucon:</b> hellovoid.online said they're waiting for the new order of stickers  
<b class="name">Thrasymachus:</b> They must be popular  
<b class="name">Glaucon:</b> oh I've seen them around for a while so I'm not surprised  
<b class="name">Thrasymachus:</b> I have a few other stickers, one says <q>sysadmin, because even developers need heroes</q>  
<b class="name">Thrasymachus:</b> Most of the rest of them are just specific tech, like a Vim sticker etc  
<b class="name">Glaucon:</b> <span class="greentext">&gt;Vim</span>  
<b class="name">Thrasymachus:</b> Oh don't start  
<b class="name">Thrasymachus:</b> I'm tired  
<b class="name">Glaucon:</b> lol  

Best of a bad bunch
-------------------

*<span class="name">Glaucon</span> has not been speaking for long before he resumes his crusade for perfection in his computing environment---although, this time around, his intentions seem somewhat simpler.  However, <span class="name">Socrates</span> has not yet arrived, so he must resort to <span class="name">Pyrrhus</span> and <span class="name">Adeimantus</span> for feedback.*

<b class="name">Glaucon:</b> I'm thinking about reinstalling Windows 98SE on my machine so I can play <cite>Counter-Strike 1.6</cite> and <cite>Rainbow Six</cite> and <cite>Tom Clancy's Ghost Recon</cite>  
<b class="name">Pyrrhus:</b> Use Wine™ [^win]  
<b class="name">Glaucon:</b> I usually avoid such things  
<b class="name">Glaucon:</b> but for such old games it might work just fine  
<b class="name">Adeimantus:</b> yeah, he can't stand using useful software  
<b class="name">Pyrrhus:</b> Install Windows 2000 then  
<b class="name">Pyrrhus:</b> Unironically the least sucky Windows  
<b class="name">Thrasymachus:</b> Weird  
<b class="name">Thrasymachus:</b> I just agreed with Pyrrhus about something  
<b class="name">Thrasymachus:</b> Am I dying?  
<b class="name">Pyrrhus:</b> No, it's only because Windows 2000 was actually made with standards i.e. POSIX [^int]  
<b class="name">Glaucon:</b> <span class="greentext">&gt;want to play old games</span>  
<b class="name">Glaucon:</b> <span class="greentext">&gt;the only proper use for 98SE</span>  
<b class="name">Glaucon:</b> <span class="greentext">&gt;just use 2000</span>  
<b class="name">Glaucon:</b> ?  
<b class="name">Pyrrhus:</b> Windows 98SE crashes hard. Windows 2000 has pretty much the same compatibility and doesn't crash so often.  
<b class="name">Glaucon:</b> crashes hard from what?  
<b class="name">Pyrrhus:</b> Existing  
<b class="name">Glaucon:</b> playing one game that was made for it?  
<b class="name">Glaucon:</b> Where does this info come from?  
<b class="name">Pyrrhus:</b> Memes?  
<b class="name">Glaucon:</b> Sometimes I swear you just make stuff up  
<b class="name">Glaucon:</b> and it's honestly annoying, everyone else here thinks I'm retarded and says so, and yet you annoy me way more with your suggestions than they do  
<b class="name">Glaucon:</b> stop telling me what to use dude, Jesus  
<b class="name">Pyrrhus:</b> I was just suggesting, not demanding that you use Windows 2000.  
<b class="name">Pyrrhus:</b> I recommended WINE and 2000 over 98, I did not tell you to use them.  
<b class="name">Glaucon:</b> I recommend not recommending me things  
<b class="name">Adeimantus:</b> too late  

*<span class="name">Glaucon</span>'s annoyed tirade against <span class="name">Pyrrhus</span> is interrupted by the arrival of <span class="name">Socrates</span>.*

<b class="name">Socrates:</b> we never spoke more about BGP  
<b class="name">Glaucon:</b> yes  
<b class="name">Glaucon:</b> alright let me make a coffee  
<b class="name">Glaucon:</b> to prepare myself  

Lord of the routes
------------------

<b class="name">Glaucon:</b> Socrates, all right, I have my caffeine, let's do this  
<b class="name">Glaucon:</b> So to recap: [^rec]  
<b class="name">Glaucon:</b> a BBS is just software on a server/computer somewhere that you connect to, FidoNet is a network of BBSes, Usenet is a network that uses the NNTP news protocol, email is files sent using the SNTP protocol, and a router is any computer/device that routes IP traffic, is that all correct?  
<b class="name">Socrates:</b> SMTP, but sure  
<b class="name">Glaucon:</b> I was close  
<b class="name">Socrates:</b> strictly, routers are about interconnecting networks---they route *between* networks  
<b class="name">Socrates:</b> there are other devices like switches that move IP traffic around inside of networks  
<b class="name">Glaucon:</b> You mean different networks?  
<b class="name">Socrates:</b> yes, different networks  
<b class="name">Glaucon:</b> Ahh, that explains a lot  
<b class="name">Socrates:</b> [example-network-diagram.png](/assets/img/agora/example-network-diagram.png)  
<b class="name">Glaucon:</b> And the blue circles in this image are routers?  
<b class="name">Socrates:</b> yes  
<b class="name">Socrates:</b> so see how each network/AS has a number and an IP prefix  
<b class="name">Socrates:</b> the blue network at the top is ASN894 and announces `71.19.19.0/24`  
<b class="name">Glaucon:</b> AS?  
<b class="name">Socrates:</b> <q>Autonomous System</q>, which is just a legacy term for network  
<b class="name">Glaucon:</b> some lines are filled and one is dotted, what's that mean?  
<b class="name">Glaucon:</b> I'm still trying to orient myself in this image  
<b class="name">Socrates:</b> the dotted line is just an unused link, we'll get to that soon  

Working outward
---------------

<b class="name">Socrates:</b> let's look at the yellow network for now  
<b class="name">Socrates:</b> the router in the yellow network says to its peers <q>I am `71.19.88.250`, I represent `71.19.88.128/25`</q>  
<b class="name">Socrates:</b> it only has one peer, the router at `12.99.1.1`, which is the router for ASN 999  
<b class="name">Glaucon:</b> So it's saying its address as the router, and the addresses it represents?  
<b class="name">Socrates:</b> yes  
<b class="name">Glaucon:</b> a peer is a single node you're connected to?  
<b class="name">Socrates:</b> another router you're connected to, yes  
<b class="name">Socrates:</b> in this instance, it's someone's PC running router software---but it's only talking to `12.99.1.1`, which is a hardware router---that is, just a specialized computing appliance that only runs routing software  
<b class="name">Glaucon:</b> Right, any computer could be used as a router  
<b class="name">Socrates:</b> but now the pink router knows: <q>if I ever get a packet that matches `71.19.88.128/25`, I forward it on out the network port connected to the yellow network router at `71.19.88.250`</q>  
<b class="name">Socrates:</b> the pink router replies, essentially saying <q>I can reach or forward to the rest of the inter-network network</q>  
<b class="name">Socrates:</b> so the yellow router knows it can reach the pink, green, blue, and red networks announced on the left port of the router at the pink network  
<b class="name">Socrates:</b> the basic trick is that for each link, the entire network is represented: one half on one end, and the other half on the other end  
<b class="name">Socrates:</b> so, does the negotiation between yellow and pink make sense?  
<b class="name">Glaucon:</b> I'm trying to register it  
<b class="name">Socrates:</b> think about standing hand in hand in a line of friends  
<b class="name">Socrates:</b> on your left hand will be one half of your friends  
<b class="name">Socrates:</b> on the right hand will be the other half  
<b class="name">Socrates:</b> you're the router between them  
<b class="name">Glaucon:</b> Right  
<b class="name">Glaucon:</b> And the routers you're connected to tell you who *they're* connected to  
<b class="name">Socrates:</b> yeah  
<b class="name">Glaucon:</b> and when you get a packet, you pass it on to the router that represents that address, and if it handles that computer directly it sends it directly---and if not, it sends it on  
<b class="name">Glaucon:</b> like the Pony Express  
<b class="name">Glaucon:</b> I understood that basic part, at least  
<b class="name">Glaucon:</b> I thought it was something more  
<b class="name">Socrates:</b> OK, so lets say we're `71.19.88.201`, in the yellow network, top left  
<b class="name">Socrates:</b> we want to send a packet to `12.99.2.1`, the computer in the pink network, top left again  
<b class="name">Socrates:</b> the packet goes to our router  
<b class="name">Socrates:</b> the router says: <q>what interface has announced an IP prefix that matches `12.99.2.1`?</q>  
<b class="name">Socrates:</b> it looks at the peers it has, in this case pink, and looks to see if there is a matching prefix announced there  
<b class="name">Glaucon:</b> <q>interface</q> in this instance meaning <q>router</q>?  
<b class="name">Socrates:</b> <q>interface</q> meaning a network port  
<b class="name">Socrates:</b> routing is very physical  
<b class="name">Socrates:</b> it's about sending packets down the right wires to get it to the computer it needs to be  
<b class="name">Socrates:</b> in the analogy, your left and right hands are interfaces of the router Glaucon  
<b class="name">Glaucon:</b> Right  
<b class="name">Socrates:</b> so the yellow router has 1 interface  
<b class="name">Socrates:</b> and 1 peer  
<b class="name">Glaucon:</b> So when it finds an interface that has announced an IP prefix, the pink router, it sends the packet to the pink router?  
<b class="name">Socrates:</b> and it knows that the peer on that interface has announced a bunch of prefixes, but you can see the bottom prefix is there on the left interface of the pink router  
<b class="name">Socrates:</b> so the yellow router knows <q>the matching prefix for `12.99.2.1` is towards the pink router</q>  
<b class="name">Socrates:</b> sends the packet that way  
<b class="name">Socrates:</b> and its job is done  
<b class="name">Glaucon:</b> Right  
<b class="name">Glaucon:</b> And most routers are connected to only a few interfaces, I'm guessing?  
<b class="name">Socrates:</b> it varies  
<b class="name">Glaucon:</b> like my router in my house is connected to only so many interfaces, I'm guessing  
<b class="name">Socrates:</b> the router in your house isn't a <q>real</q> router but we'll talk about that later  
<b class="name">Glaucon:</b> and the ISP has its own interface somewhere that routes traffic towards a lot more interfaces  
<b class="name">Glaucon:</b> alright, that's fair  
<b class="name">Socrates:</b> lets keep our heads up at the inter-university level just now  
<b class="name">Socrates:</b> (I mean, it is a real router but it does so in different ways related to how ISPs have run out of IPs, etc, and it's all very messy)  
<b class="name">Socrates:</b> (it doesn't use BGP either since it doesn't do any kind of complex routing either)  
<b class="name">Socrates:</b> so  
<b class="name">Socrates:</b> happy with the discussion between the yellow network and the pink network?  
<b class="name">Glaucon:</b> Yes, now that you've explained we're only talking about inter-university, it all makes much more sense now  
<b class="name">Socrates:</b> OK  
<b class="name">Glaucon:</b> I was imagining some of those routers as home routers, so this simplifies it a lot  

The ol' route-and-switch
------------------------

<b class="name">Socrates:</b> lets talk about pink to green  
<b class="name">Socrates:</b> so pink has three interfaces here  
<b class="name">Glaucon:</b> Now, both pink and green have the router  
<b class="name">Glaucon:</b> the blue circle  
<b class="name">Socrates:</b> yellow has a router as well  
<b class="name">Socrates:</b> just it's not a hardware router  
<b class="name">Glaucon:</b> and a blue square, what's that?  
<b class="name">Socrates:</b> the blue square is a switch  
<b class="name">Socrates:</b> it basically just moves packets around inside a network  
<b class="name">Socrates:</b> it doesn't do any complex thinking  
<b class="name">Socrates:</b> the inside of the networks is irrelevant, but I've added a bunch of different looking networks to show that really it can be anything: we're only interested in the links that move across the borders of networks  
<b class="name">Glaucon:</b> So, it routes traffic *within a single network*, is that it?  
<b class="name">Glaucon:</b> As opposed to a router which routes traffic *between* networks, is that the distinction?  
<b class="name">Socrates:</b> switches are basically interface multipliers  
<b class="name">Socrates:</b> you want a router to be as fast and as simple as possible  
<b class="name">Glaucon:</b> So with the switch, the router sends the file to the switch, and the switch simply figures out which computer is the right destination?  
<b class="name">Glaucon:</b> taking some of the load off of the router?  
<b class="name">Socrates:</b> for the sake of simplification: a switch is a bunch of interfaces/Ethernet ports  
<b class="name">Socrates:</b> any packet that arrives on any interface is copied to every port out  
<b class="name">Socrates:</b> look at `12.99.3.1`  
<b class="name">Socrates:</b> it only has 1 interface/port  
<b class="name">Socrates:</b> so to talk to other computers, it sends a packet to the switch which duplicates it and sends it to all the other computers connected  
<b class="name">Socrates:</b> in this way, a computer with only one port can speak to many other computers without having to be re-plugged all the time  
<b class="name">Glaucon:</b> Right, that was my second guess  
<b class="name">Socrates:</b> but it's not important other than for interest here  
<b class="name">Glaucon:</b> so a switch is even simpler, it receives a packet, and duplicates it to every computer, and if that computer is the right address, it'll accept the packet?  
<b class="name">Socrates:</b> yes, computers do not generally accept packets that do not have their IP  
<b class="name">Glaucon:</b> So the switch is an extremely <q>dumb</q> piece of hardware/software then  
<b class="name">Glaucon:</b> dumb as in dumb terminal  

Abandon all hope, ye who traverse here
--------------------------------------

<b class="name">Socrates:</b> let's define a router:  
<b class="name">Socrates:</b> a router is a device with <var>n</var> interfaces  
<b class="name">Socrates:</b> interface 0 connects to its own network  
<b class="name">Socrates:</b> interfaces 1..<var>n</var> connect to other networks, and internally are marked with which prefixes are available via that interface  
<b class="name">Glaucon:</b> <var>n</var> interfaces? the <var>n</var> being a variable or?  
<b class="name">Socrates:</b> yes, a variable  
<b class="name">Socrates:</b> so you could have a router with 2 ports: one that goes to a peer, and one that goes to the internal network  
<b class="name">Socrates:</b> let's look at pink  
<b class="name">Socrates:</b> the pink router has 4 interfaces:  
<b class="name">Socrates:</b> \* interface 1 connects to the yellow network  
<b class="name">Socrates:</b> \* interface 2 connects to `12.99.2.1`  
<b class="name">Socrates:</b> \* interface 3 connects to a switch (which is connected to the other computers)  
<b class="name">Socrates:</b> \* interface 4 connects to the green network  
<b class="name">Socrates:</b> see how we've taken a four-port router and been able to connect it to six machines, two of which (yellow and green) are routers for other networks?  
<b class="name">Glaucon:</b> Yes  
<b class="name">Glaucon:</b> I do actually  
<b class="name">Socrates:</b> OK  
<b class="name">Socrates:</b> so, interface really does mean port, you're already familiar with this, we're just giving it a different name now  
<b class="name">Socrates:</b> but for the purpose of routing, we can pretend that pink router only has three  
<b class="name">Socrates:</b> one (set of) interface that goes towards the internal network  
<b class="name">Socrates:</b> and two interfaces which peer with other routers  
<b class="name">Socrates:</b> so let's talk about the peering connection between pink and green  
<b class="name">Glaucon:</b> right right  
<b class="name">Glaucon:</b> I'm caught up  
<b class="name">Socrates:</b> the pink router already knows <q>I represent my own network, `12.99.0.0/16`</q>  
<b class="name">Socrates:</b> <q>I also can forward packets to `71.19.88.128/25` out my left interface</q>  
<b class="name">Socrates:</b> with this in mind, it connects to whatever is out its right interface towards green and says:  
<b class="name">Socrates:</b> <q>I am `12.99.1.1`, and I represent `12.99.0.0/16` (ASN999). I can also forward packets for `71.19.88.128/25` (ASN1)</q>  
<b class="name">Socrates:</b> so the green router now knows that if it ever receives a packet for either of those prefixes, it should send it that way  
<b class="name">Socrates:</b> when green sends a matching packet left, it will first arrive at pink  
<b class="name">Socrates:</b> pink will then look to see if it matches its own network: if it does, it will send it down the internal network interface  
<b class="name">Socrates:</b> if it does not, it looks to see if it matches any of the other prefixes it knows, such as the prefix for yellow  
<b class="name">Socrates:</b> if it matches yellow, it will send the packet left again, where the router at yellow will check that it matches, and if it does, will send it to the internal network  
<b class="name">Glaucon:</b> yes  
<b class="name">Glaucon:</b> I understand how a postal network works  
<b class="name">Glaucon:</b> I thought we were going more specific  
<b class="name">Socrates:</b> this really is how it works  
<b class="name">Socrates:</b> the entire internet is just routers promising they can see other networks on their peers' behalf  

A network of your peers
-----------------------

<b class="name">Glaucon:</b> Okay, then what is BGP?  
<b class="name">Socrates:</b> BGP is the protocol they speak to promise that  
<b class="name">Socrates:</b> <q>I am `12.99.1.1`, and I represent `12.99.0.0/16` (ASN999). I also can forward packets for `71.19.88.128/25` (ASN1)</q>  
<b class="name">Socrates:</b> this is what BGP says  
<b class="name">Socrates:</b> look at green, though: it has three peers, and as a result has to send a complicated set of prefixes out of each interface  
<b class="name">Glaucon:</b> it'll say to each router, that it can forward packets to the other two, as well as the two interfaces on its own internal network, yes?  
<b class="name">Glaucon:</b> a bit of a mouthful  
<b class="name">Socrates:</b> not just the networks it's connected on the other two  
<b class="name">Socrates:</b> but also the networks the other two are themselves connected to  
<b class="name">Socrates:</b> so look at red, but go down the link towards green  
<b class="name">Socrates:</b> the green side says <q>I can connect to yellow and pink, and myself, and blue</q>  
<b class="name">Glaucon:</b> Right  
<b class="name">Socrates:</b> (the bottom red at the right hand interface of green is a mistake: green shouldn't announce that it can reach red, to red)  
<b class="name">Socrates:</b> but tbh we've now just discovered why the internet is a miracle that it works  
<b class="name">Socrates:</b> BGP has no provision for verification or security  
<b class="name">Socrates:</b> red could say very loudly <q>I CAN REACH YELLOW!</q>  
<b class="name">Socrates:</b> at which point green might say <q>OK, the best way to get to yellow is via red</q>  
<b class="name">Socrates:</b> and now red can spy on every message that was intended for yellow  
<b class="name">Socrates:</b> the way this is mostly done is because every ASN has a legal owner, and generally you actually know the people you directly peer with  
<b class="name">Socrates:</b> you've run a cable to them, and promised each other to peer between  
<b class="name">Socrates:</b> ISPs tend to have routers all in the same building, known as points of presence where they agree to exchange traffic with each other  
<b class="name">Socrates:</b> here's an example of one such organization holding a peering building: <https://ixleeds.net/members.shtml>  
<b class="name">Socrates:</b> JISC, ASN786 is the UK's national academic network  
<b class="name">Socrates:</b> they probably connect to a lot of those other networks in Leeds  
<b class="name">Socrates:</b> Hurricane Electric at the bottom, for example, is a big backbone provider for things like fast transit across the oceans  
<b class="name">Socrates:</b> Akamai are a CDN who provide distribution for things like YouTube  
<b class="name">Socrates:</b> here is the information for ASN786 (JISC): <https://peeringdb.com/net?asn=786>  
<b class="name">Socrates:</b> you can see that JISC holds 400 IPv4 prefixes and 20 IPv6 prefixes, which generally route out to the few hundred universities, colleges, and research institutions in the UK  
<b class="name">Socrates:</b> you can see the rules and details for peering with them here: <https://community.jisc.ac.uk/groups/janet-peering-policy>  

*There is a long silence.  At long last, it seems that <span class="name">Glaucon</span>'s curiosity has been sated---or perhaps simply overwhelmed---and he says nothing further for the rest of the evening.*

Epilogue
--------

*The lull in the conversation prompts an observing <span class="name">Pyrrhus</span> to raise a challenge to one of <span class="name">Socrates</span>' teachings.*

<b class="name">Pyrrhus:</b> There's a difference between a switch and a multiplier [^hub]  
<b class="name">Socrates:</b> yes  
<b class="name">Socrates:</b> I know it's not a hub  
<b class="name">Socrates:</b> but I didn't want to get into the concept of switch interface learning  
<b class="name">Socrates:</b> to do that we then have to talk about mac addresses, etc  
<b class="name">Socrates:</b> and tbh that was unrelated to the discussion at hand  
<b class="name">Pyrrhus:</b> The switch just ties a IP to a MAC address and then will send a packet destined for a IP to the right MAC address. Or the other way round.  
<b class="name">Socrates:</b> yes  
<b class="name">Socrates:</b> but then we get into discussions for thins like ARP  
<b class="name">Socrates:</b> and I didn't fancy that when we're balls-deep in BGP  

*The Cretin <span class="name">Cephalus</span> also takes an interest.*

<b class="name">Cephalus:</b> a layer two switching bridge has to use ARP to figure out who has what IP address, to send packets to the right port  
<b class="name">Socrates:</b> I once saw <q>Who has `127.0.1.1`</q> fly by on Wireshark [^wir]  
<b class="name">Socrates:</b> which had me creased  
<b class="name">Cephalus:</b> oh my god  
<b class="name">Cephalus:</b> lmao  
<b class="name">Cephalus:</b> aaaaaaaaaaaaaaaaaaaaaaaaa  
<b class="name">Socrates:</b> I have no idea what must have been so fucked as to ask that [^loc]  
<b class="name">Socrates:</b> closed my eyes and moved on  
<b class="name">Cephalus:</b> who gets to go to computer prison  
<b class="name">Cephalus:</b> don't drop your soap... I'll help you ;)  

[^win]: [Wine Is Not an Emulator](https://www.winehq.org/), a software compatibility layer that allows some Windows applications to run on GNU/Linux, \*BSD, and other POSIX-fearing operating systems.
[^int]: Pyrrhus is alluding to [Interix](https://en.wikipedia.org/wiki/Interix), a POSIX-conforming UNIX subsystem that was available for Windows NT.
[^rec]: See <cite>[Part 1](/agora/book-03-daemons-at-the-gateway-part-01.html)</cite>.
[^hub]: Socrates' simplified explanation asserted that a switch repeats traffic it receives down all its ports, *multiplying* the data.  This is in fact what a simpler device called a *hub* does, and is what Pyrrhus means here.  Switching technology is so commonplace now that hubs are rare outside of legacy networks.
[^wir]: [Wireshark](https://www.wireshark.org/) is a free and open-source packet analyzer for decoding network packets of various kinds, often used for diagnosis of network issues or for reverse engineering.
[^loc]: Per [RFC 3330](https://www.rfc-editor.org/rfc/rfc3330.txt), any IPv4 address in the range `127.0.0.0/8`---that is, any address with the first of its four octets being `127`---is a *local* address, and should always return directly to the same host that sent it, generally without crossing any network links.  Seeing such an address appear in network traffic is unusual and almost certainly wrong.
