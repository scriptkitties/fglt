---
title: Agora—Book I—The Tragedy of Open Hardware
permalink: /agora/dialogues/book-01-the-tragedy-of-open-hardware.html
layout: default
---

Introduction
------------

Glaucon joins the agora with its usual 30--40 patrons present, most of whom are idling or spectating.  Glaucon has ambitious and unusual goals for his computing environment, and high standards of openness and freedom for the hardware he wants to use, but isn't sure where to start implementing what he wants.  Socrates, one of the regulars, having experience in this area, explains to Glaucon some of the subtleties of hardware being "open" or "closed", and clears up some surprising misconceptions that Glaucon likely shares with others in his position.

Dramatis personae
-----------------

In order of appearance:

* **Glaucon:** A Cretin visitor to the agora, with grand ideals of freedom and minimalism in computing  
* **Thrasymachus:** A self-taught Ithacan sysadmin with no engineering knowledge
* **Socrates:** Famed philosopher-engineer of Athens  
* **Adeimantus:** Another Cretin, a regular visitor, impatient with his countryman's idealism  
* **Polemarchus:** A Spartan  

Prelude
-------

**Glaucon:** why hello  
**Glaucon:** I need some help with something   
**Glaucon:** Does anyone know of any completely free hardware computers? I'm looking and I can't find any  
**Thrasymachus:** Who wants to tell him  
**Glaucon:** I thought there were at least one or two  
**Glaucon:** like a weak 16-bit/32-bit one at least  
**Socrates:** Thrasymachus: why didn't you mention POWER?  
**Thrasymachus:** ?  
**Socrates:** POWER is a remarkably open architecture  
**Thrasymachus:** I wonder if it would meet Glaucon's high standards  
**Adeimantus:** it's too new  
**Adeimantus:** only the oldest workable tech will do, because performance is bloat  
**Socrates:** Thinkpad with pre-ME CPU, Libreboot, and Trisquel  
**Socrates:** no networking because I haven't found an ISP that will give me the source to their CRM  
**Glaucon:** people on /g/ are saying system76 but that's not at all what I'm looking for  
**Glaucon:** they're all Intel or AMD CPUs  
**Glaucon:** Pinebook is closer  

The spectre of management engines
---------------------------------

**Thrasymachus:** Socrates may be able to help you  
**Glaucon:** hi Socrates  
**Socrates:** <https://www.raptorcs.com/content/TL2B01/intro.html>  
**Glaucon:** &gt;OpenPOWER  
**Glaucon:** BEAUTIFUL  
**Socrates:** POWER arch, auditable/disablable management  
**Glaucon:** this is exactly what I was looking for  
**Thrasymachus:** Socrates wins  
**Glaucon:** management?  
**Glaucon:** like IME?  
**Socrates:** OpenBMC  
**Socrates:** <https://github.com/openbmc/openbmc>  
**Glaucon:** this is its own OS?  
**Glaucon:** I'm still a bit lost  
**Socrates:** Intel ME is a small CPU tacked on the side running Minix  
**Socrates:** like it or not, management is actually pretty cool and useful  
**Socrates:** the reason why ME is shit is because it's not owned by you, so while you can control it (and it is useful for everybody), people don't trust Intel to make it secure and safe against economic/political pressures  
**Glaucon:** what if I wanted to avoid it entirely  
**Glaucon:** that's why I bought a 2003 Tower to begin with  
**Socrates:** then disable it  
**Glaucon:** there must be an option to have it not be there at all  
**Socrates:** probably, if you email them they'll probably ship it nulled out  
**Socrates:** or give you instructions on how to do the same  
**Glaucon:** do you know of any other boards like this you could link?  
**Socrates:** nothing at this level ships without management  
**Socrates:** (its not inherently bad)  
**Socrates:** its basically just Wake-on-LAN but extended  
**Glaucon:** what does ship without management  
**Socrates:** to get stuff that ships without management you have to go into the low end devices that are used by people who don't care about openness  
**Socrates:** but genuinely, management is orthogonal to openness/security  
**Glaucon:** such as?  
**Glaucon:** ah shit, this board is $4k  
**Glaucon:** lmao  
**Socrates:** I mean, if you buy old pre-ME business laptops, they're probably the best trade-off between good devices  
**Glaucon:** that's what I figured  
**Socrates:** but really, don't ask for "no management", ask for management you can control  
**Socrates:** its the difference between &lt;manufacturer BIOS&gt; and Libreboot, etc  
**Socrates:** <https://en.wikipedia.org/wiki/OpenBMC> is probably a better explanation  
**Glaucon:** so there essentially aren't affordable options for open source CPUs at all  
**Socrates:** OpenPOWER  
**Socrates:** as was linked  
**Socrates:** if you want to wait another decade, we might get some traction in RISC-V  
**Socrates:** but for now, RISC-V competes with ARM, not Intel/AMD  
**Glaucon:** that thing was 4000 bux  
**Socrates:** listen bud freedom doesn't come free  
**Socrates:** [https://i.kym-cdn.com/photos/images/newsfeed/000/856/704/8b2.jpg](/assets/img/agora/freedom-aint-free.jpg)  
**Glaucon:** praise Jesus  
**Thrasymachus:** fugg  

The economics of open hardware
------------------------------

**Glaucon:** I don't understand why I can't get an SBC with an open source CPU  
**Socrates:** that's because you don't understand market economics, but that's ok  
**Socrates:** if SBC grade is what you're looking for, you can get RISC-V now for a shit perf:$ ratio, but a low absolute cost  
**Glaucon:** okay  
**Glaucon:** but a few hundred dollars would be possible  
**Glaucon:** not just 4k  
**Socrates:** probably we're talking Raspberry Pi perf for the cost of a decent laptop  
**Glaucon:** yeah that's reasonable  
**Socrates:** and no software support  
**Socrates:** <https://www.sifive.com/boards>  
**Thrasymachus:** I think I need to learn something about RISC-V  
**Socrates:** basically just imagine the ARM product line but open source  
**Thrasymachus:** I ain't mad at that  
**Socrates:** looks like you can get an unleashed board for ~$1000  
**Glaucon:** still a bit high  
**Glaucon:** but much more reasonable  
**Glaucon:** maybe I'll take the dive eventually  
**Socrates:** sadly, that's the two ends of the spectrum right now  
**Glaucon:** It's getting better  
**Socrates:** you can get an Raspberry Pi for $1000, or you can get a POWER workstation for $5000  
**Glaucon:** I might just get one of those Rockchip SBCs instead  
**Glaucon:** or ARM SBCs  
**Glaucon:** I don't have 1000 bux to drop on a PC I want to use rarely  
**Socrates:** Rockchip is ARM  
**Glaucon:** right  
**Glaucon:** well either way  
**Socrates:** is Mali open source?  
**Socrates:** I thought it needed blobs  
**Socrates:** oh, ARM give you some open source userspace drivers  
**Socrates:** standby for 0 perf lmoa :(((  
**Glaucon:** if I was gonna just get an ARM SBC do you have any suggestions  
**Glaucon:** I know the banana pi is mostly open software/hardware  
**Socrates:** what's your use case?  
**Glaucon:** I need about 1GHz CPU and 1-2GB of RAM, I've been using an old 2003 Dell Tower for minimalist Linux, right now Alpine, and a simple web browser, text-based email client, text-based torrent client, text-based IRC client, and like mpv or something  
**Glaucon:** that's about it  
**Socrates:** no, tell me your use case  
**Glaucon:** that's my use case  
**Socrates:** what you're upgrading from  
**Glaucon:** I don't understand  
**Glaucon:** that's what I'm upgrading from, that tower, do you want the model  
**Socrates:** ok  
**Socrates:** just get whatever the most-FOSS SBC you can find is  
**Socrates:** but just remember that half of them aren't actually FOSS  
**Socrates:** (either because they are crippled when running FOSS only, or they ship violating blobs)  
**Thrasymachus:** Way to crush his dreams, Socrates  
**Glaucon:** yeah it's not a great situation right now  
**Socrates:** Thrasymachus: he wants everything for nothing, the only solution they have is to pay and support showing that its a workable market, or to just deal with compromise  
**Socrates:** or sit on his hands and hope the rest of the world carries them I guess  
**Glaucon:** <http://nonfree.pizza/>  
**Glaucon:** I don't want everything for nothing  
**Glaucon:** I want to know what my options are  
**Glaucon:** I don't know much about open source hardware so I'm learning  
**Glaucon:** I only just jumped off from using Windows 10 daily lmao  
**Socrates:** I really suggest you understand what management is though, because you went from "I don't know where OpenBMC sits in the stack" to "management bad"  
**Socrates:** so you p much only know the "IME is bad" bit of the story, which is absolutely true, but only one page of a very large book  
**Glaucon:** I never said management bad  
**Glaucon:** I asked if there was anything I could get with no management  
**Glaucon:** to understand the range of these devices  
**Socrates:** you said you didn't want management at all, which pigeonholes you to "very old" or "very low end"  
**Glaucon:** I don't mind very old  
**Glaucon:** the problem is very old is often very proprietary as well  
**Socrates:** management is now the default, so you need to make some compromise: remove it, at cost, or pick something old, at a performance penalty, or pick something low end, at a perf penalty, or pick something where the management is open, at a cost  
**Glaucon:** I also wanna avoid x86 bc then I can pigeonhole myself into only using Linux/BSD  
**Socrates:** interesting statement  
**Socrates:** pick x86\_64 and you get to run anything, including a better range of Linux, and other interesting stuff like Haiku, Plan 9, etc  
**Glaucon:** that's the opposite of what I want  
**Glaucon:** I don't want to run anything  
**Glaucon:** if I did I'd have kept my gaming PC  
**Adeimantus:** then why are you even here?  
**Socrates:** ascetic minimalism and restriction comes at the cost of your own experience  
**Glaucon:** perfect  
**Glaucon:** that's exactly what I want  
**Socrates:** then get a Filofax and some stamps  
**Socrates:** the computing world is not for you  
**Socrates:** you've been had, and you're taking the /g/ minimal desktop thread meme way too hard  
**Glaucon:** nah, I'm enjoying myself  
**Glaucon:** I just want to take the next step and get more open hardware  
**Socrates:** well  
**Socrates:** you say that but you're not willing to take what comes with that  
**Socrates:** buying cheap SBCs is usually non-free, even when they have "FOSS" on the sticker  
**Socrates:** usually by taking the allwinner route  
**Glaucon:** because it doesn't have to be expensive  
**Glaucon:** it is currently  
**Socrates:** the only way to make it not expensive is to support the market now  
**Adeimantus:** it has to be expensive when you have low demand and high costs due to lack of scale  
**Glaucon:** nah  
**Socrates:** like, Raptor are seriously, seriously thinking about pulling from the market  
**Socrates:** because they cant make the economics work  
**Socrates:** because of what Adeimantus said  
**Glaucon:** then buy it yourself? I'm not gonna buy a 1000 dollar PC  
**Glaucon:** it doesn't have to cost that much  
**Socrates:** like I said, you don't understand market economics  
**Socrates:** it doesn't have to cost that much, but you have to overcome a more expensive period to push through to the garden of Eden  
**Glaucon:** the thing is  
**Glaucon:** a cheap chinese SBC is still preferable to an x86 tower  
**Glaucon:** in this case  
**Glaucon:** and I don't have 1000 dollars  
**Socrates:** ok, but a cheap chinese SBC will not be any more free  
**Socrates:** instead you're just going to be more limited  
**Glaucon:** a Rockchip is more open than an Intel CPU  
**Glaucon:** lol  
**Glaucon:** not by much but it is  
**Thrasymachus:** Going in circles now  
**Glaucon:** because he's bitching that I'm not gonna spend a thousand dollars on this PC, and he's saying I'm not living in reality by saying "the reality is I don't have that kind of money so I'm going to do what I can to avoid this proprietary shithole on my budget"  
**Socrates:** people like allwinner say they are free, but the fact is they mostly sit somewhere around "never actually discloses source", "source disclosed builds and runs but is clearly not what shipped and is much lower quality (bait and switch)", or "rancid GPL violations"  
**Socrates:** I'm fully aware of your goals  
**Socrates:** I'm saying that the volume of options when you're honest to those limitations is 0  
**Socrates:** so you can either relax cost, or you can relax openness  
**Glaucon:** who do you know that can just relax cost  
**Thrasymachus:** People with $1000  
**Socrates:** most people can relax cost by saving  
**Glaucon:** I'd like to meet them, that they can just decide they have a bigger budget on the fly  
**Glaucon:** I'm relaxing openness   
**Glaucon:** And I still think getting an ARM Banana Pi or something is a better option than buying a new Wintel tower  
**Socrates:** ok, then accept that any SBC you have is going to be loaded with blobs out the foundry  
**Glaucon:** When did I say that I didn't accept this  
**Socrates:** you came in here saying you wanted to be more open  
**Glaucon:** Okay but when did I say that I didn't accept that  
**Glaucon:** that doesn't answer the question I just asked  
**Socrates:** x86 platforms are pretty much more open by the virtue of choice, population of freedom-desiring users, and need to interoperate  
**Glaucon:** it doesn't feel very open to me if I can only buy from Intel or AMD, that's not virtue of choice  
**Glaucon:** At least ARM has plenty of companies producing them  
**Socrates:** you know that ARM only sells IP I'm sure  
**Glaucon:** I don't know what this means, no  
**Glaucon:** only sells Intellectual Property?  
**Glaucon:** as in they don't make chips?  
**Socrates:** correct  

The false promises of ARM
-------------------------

**Socrates:** most ARM chips are completely non-replaceable by other devices  
**Socrates:** they are interchangeable above the CPU level because they all present an ARM interface to software  
**Socrates:** but the firmware used to make them work is usually non-open  
**Socrates:** so if you buy a chinese SBC, the only people making firmware for that are the manufacturer  
**Glaucon:** it doesn't have to be Chinese  
**Socrates:** if you ask them for the source, they will generally either not respond, send you GPL-violating source, or send you source code that is clearly not what is running on the board, because it is buggy, slow, or requires significant adjustments to target the silicon  
**Glaucon:** I just said that as an example  
**Socrates:** well, the point is general  
**Socrates:** I'm sorry, but you've come into this channel and you seem to have accepted my expertise when you were asking me questions about different architectures like power, RISC-V, etc  
**Socrates:** but now when I'm telling you uncomfortable truth you call it bitching  
**Glaucon:** No I get it  
**Glaucon:** I'm just saying  
**Glaucon:** I still don't see why I'd buy a Wintel laptop/tower over an ARM SBC  
**Socrates:** ARM SBCs are less open  
**Socrates:** and less capable  
**Glaucon:** less capable I don't care  
**Glaucon:** less open I get  
**Adeimantus:** "I want to use tech as little as possible and just be done with it"  
**Adeimantus:** "I also want to go out of my way to use the most hipster shit imaginable, exponentially increasing my time spent on this tech I hate and dramatically limiting my options in getting shit done"  
**Adeimantus:** do you even listen to yourself dude?  
**Socrates:** if you just want the cheapest thing you can get as just get on with it, just get the cheap new Raspberry Pi[^rpi] that came out  
**Glaucon:** What do you want though, should I just keep using a Windows 10 laptop  
**Socrates:** I want you to drop the pretense  
**Glaucon:** There is no pretense  
**Glaucon:** I want this thing  
**Socrates:** then stop saying that openness is so important to you  
**Glaucon:** it doesn't exist largely  
**Glaucon:** that's okay  
**Socrates:** correct  
**Glaucon:** But I can get closer to it  
**Socrates:** or rather, it exists, but outside the limitations you put on your search  
**Glaucon:** well yes it exists in workstation motherboards and such  
**Socrates:** if you want open and cheap, get an Raspberry Pi: the only thing that its really missing is a manufacturer provided GPU driver in free code  
**Glaucon:** yeah that's probably the best option  
**Socrates:** I'm pretty sure you can still boot it with entirely free software but the perf is abysmal  
**Glaucon:** perfect  
**Socrates:** but its extremely well supported generally, so you're not going to spend your entire life debugging issues with it and recompiling software with a substandard toolchain  
**Socrates:** but you need to accept that this is not really any more free than a modern x86\_64 device  
**Socrates:** where you can run FOSS BIOS, FOSS bootloader, FOSS OS, use entirely FOSS drivers with little restriction in devices, and null out the stuff you cant  
**Glaucon:** it's also about production  
**Socrates:** and you get way better bang for your buck  
**Glaucon:** only two companies make x86 CPUs  
**Glaucon:** and that bothers me as well  
**Socrates:** to be clear, whatever ARM device you pick, only 1 manufacturer will ever produce that  
**Glaucon:** yes, I'm aware of this  
**Socrates:** this isn't the same as the analogy you're drawing in your head  
**Glaucon:** I think you misunderstand  
**Glaucon:** I know only one manufacturer will only ever make any particular ARM device  
**Socrates:** ok, let me reframe it  
**Socrates:** ARM-based chips are motherboards  
**Socrates:** the only replaceable part is the ARM IP core  
**Glaucon:** that's fine with me  
**Socrates:** everything else in an ARM chip is proprietary  
**Glaucon:** I get this  
**Socrates:** the idea that "only two corps make x86" vs "lots of people make ARM based stuff" is much more like "one one person makes ARM (ARM)" and "but lots of people make ARM/86 mobos"  
**Socrates:** ARM is more restricted at the architecture level (only ARM gets a say because its proprietary IP - any company can use the x86 arch essentially, but only ARM can make ARM processors)  
**Socrates:** but they sell those processors as sub-chips you can integrate onto your own proprietary silicon to make a whole chip  
**Glaucon:** alright alright  
**Socrates:** the example at my company: we had large swathes of silicon specially designed for high speed laser control  
**Glaucon:** I'm trying to understand  
**Socrates:** but we didn't want to implement the CPU to control it, so we bought ARM silicon to go alongside it on the chip  
**Glaucon:** you were using ASICs for the laser control?  
**Socrates:** yes, but ASIC is a very general methodological term  
**Socrates:** ARM based devices are all ASICs  
**Socrates:** we would prototype on FPGA with ARM softcores and then either deploy FPGAs on the high end products, or where the scale was there, spin a few thousand chips at foundry  
**Glaucon:** <https://en.wikipedia.org/wiki/Arm_Holdings#Arm_core_licensees>  
**Glaucon:** this is a big list of licensees  
**Socrates:** but this is what all ARM licensors do: they buy the ARM CPU, then they build interconnect silicon, clock silicon, etc and wrap it  
**Glaucon:** but you're saying they all all buy ARM CPUs and then just add on to them?  
**Socrates:** yes  
**Glaucon:** no way  
**Glaucon:** really?  
**Socrates:** "ARM CPU" is just basically the ALU, decoder, pipeline, etc  
**Socrates:** this is what they sell as IP  
**Glaucon:** So every ARM CPU does come from the same factories at the end of the day?  
**Socrates:** your job is to wrap it with silicon specific to your market/use case  
**Glaucon:** just like x86?  
**Socrates:** you don't understand how device manufacturing works, but "yes"  
**Socrates:** ARM sell patterns of silicon wafer that you are not allowed to look at for how it works, but the silicon wafer has known edges that you can interface with, and what you do is put your own silicon up to those edges  
**Socrates:** so only one person "manufactures" ARM, but they don't actually make any product  
**Socrates:** they sell the patterns of transistors  
**Socrates:** you're not allowed to look at how they work, but they do let you also buy a manual explaining what the transistors have as an interface, typically memory and control lines  
**Socrates:** like I said, its more like buying a CPU and building the motherboard around it  
**Socrates:** but you put the motherboard into the silicon wafer right beside the ARM CPU instead of connecting to it via the pins on the device package  
**Glaucon:** right  
**Glaucon:** that's what I was imagining   
**Socrates:** now, its unhelpful to have to physically sell slices of silicon that people weld onto your silicon, so instead they sell the pattern of silicon. you then arrange your pattern of silicon around it, and send the whole thing off to manufacture  
**Glaucon:** so they let you buy the IP  
**Glaucon:** but they only let you know how certain things work  
**Glaucon:** then you can manufacture the CPU yourself, and have your own devices interface with it?  
**Glaucon:** am I getting it?  
**Socrates:** no  
**Glaucon:** okay  

Metaphor for software brainlets
-------------------------------

**Socrates:** what is a CPU, describe it to me  
**Socrates:** what does it look and feel like  
**Glaucon:** Well it looks like a small circuit integrated into a small silicon wafer, that's designed for general case computing  
**Socrates:** no  
**Socrates:** lets move to a software analogy  
**Glaucon:** okay then you explain it  
**Socrates:** most people see a CPU like an executable  
**Socrates:** you buy it and make it part of your system  
**Socrates:** what ARM do is they sell you precompiled library and header files  
**Socrates:** you can then use these to fill in the blanks of your own software and link it into a static executable at the end  
**Socrates:** x86 device: precompiled static executable, a piece of hardware  
**Socrates:** ARM device: precompiled static executable, compromising static objects produced mainly by a manufacturer, but with one ARM static object that only ARM produce  
**Socrates:** there are two manufacturers of x86, there is only one manufacturer of ARM. but whereas you integrate x86 at the chip and motherboard level, you integrate ARM IP at the silicon design level  
**Socrates:** you buy an x86 CPU from Intel or AMD and plug it into your motherboard  
**Socrates:** you buy the equally opaque ARM RTL[^rtl] output from ARM and plug it into your own hardware-source-code  
**Socrates:** the only thing you do is the printing of their design onto silicon  
**Glaucon:** so ARM is selling you a silicon design?  
**Glaucon:** and then you produce the IC?  
**Glaucon:** adding on whatever you need  
**Socrates:** yes  
**Glaucon:** dude that's what I was trying to say earlier  
**Glaucon:** I understood  
**Socrates:** you cant say you understand and then say "but there are more ARM manufacturers than just the two x86"  
**Glaucon:** no well I didn't initially  
**Glaucon:** but when you started explaining about the IP I did  
**Socrates:** here's a real example: when people found meltdown/spectre, it only affects Intel, and not AMD  
**Socrates:** if people found something like this in ARM, every single ARM device would be hit  
**Socrates:** because no one produces alternative implementations of ARM  
**Socrates:** is there inter-implementation spying between Intel and AMD? almost certainly  
**Socrates:** but that's because they're looking for ways to make their own implementation of x86 better  
**Socrates:** no one produces competing ARM architecture because you couldn't sell it  
**Socrates:** if you had the skill to reverse it and sell it, you'd turn that skill to competing as not-ARM, like RISC-V has  
**Glaucon:** so essentially  
**Glaucon:** with ARM in the market, we're no better off than we were before ARM  
**Glaucon:** it's the same shit  
**Glaucon:** it's only stuff like OpenPOWER and RISC-V that are actually making any difference  
**Socrates:** ARM is the same shit but worse, because the market is hyperfragmented so there is no coherent userbase to make free firmware on top of ARM based devices, and the fact that they sell arch IP rather than sell an implementation of means that ARM has no competitor  
**Glaucon:** I know I come off as arrogant and stupid but I did already know that the words "free" and "open" are almost entirely buzzwords  
**Glaucon:** nothing is free/open in computers  
**Glaucon:** it's why the only feasible solution is to lessen your reliance on tech  
**Glaucon:** I mean, I can't have an open source car, but I can have a horse  
**Glaucon:** is how I'll put it  
**Glaucon:** has anyone reverse engineered ARM chips?  
**Socrates:** yes, same as people have reverse engineered early x86 devices  
**Socrates:** but reversing silicon of this kind of way is generally uninteresting  
**Socrates:** you don't need to reverse the silicon to make a competitor x86 processor, likewise, you can implement an ARM processor without ever seeing the silicon than ARM sell  

The market realities of reverse engineering
-------------------------------------------

**Thrasymachus:** This is all very new to me, so I'll ask the dumb question  
**Thrasymachus:** "Then why don't people do that?  Only legal pressure?"  
**Socrates:** ARM IP targets the people who don't want to make their own processor. if you can reverse and reimplement ARM, you could make your own non-ARM IP and not pay them  
**Socrates:** its like saying "why does no one reverse engineer a car engine": if you were in a position where you had the skills to reverse engineer an engine and build one, you probably could just design your own engine anyway  
**Socrates:** the problem is that hardware has far more moving parts, some of which are open and some of which are not  
**Socrates:** free/open in hardware is a multi-layer, multi-dimensional spectrum  
**Socrates:** people think this about software, but its not really true  
**Thrasymachus:** I'm really glad I was awake to observe this  
**Thrasymachus:** I don't think I'd ever grasped the enormous subtleties of the question "is it open?" as it pertains to hardware before this  
**Thrasymachus:** You have evidently thought about this a lot  
**Glaucon:** everyone who cares about openness has thought about this a lot  
**Thrasymachus:** It's not fair to say that; I'm ignorant of hardware, but freedom/openness has been a central interest of mine pretty much since I first booted Ubuntu  
**Thrasymachus:** Until Socrates clarified it for you just then, with me watching, I wouldn't even have known where to begin  
**Socrates:** hardware is much more like a world where everyone implements and sells static libraries, and your end product is an executable  
**Thrasymachus:** This is the first time that has really made sense to me  
**Socrates:** to be clear, the executable here is only a single chip  
**Socrates:** you still need to then build that into a much larger design to be useful  
**Socrates:** hardware is a fractal of complexity with every layer being an abstraction to a whole 'nother industry  
**Socrates:** software is really easy because everything is self contained and 1D, 2D at most if you count talking across the syscall line  

The practical openness of x86
-----------------------------

**Socrates:** actually, why am I still describing this with words  
**Socrates:** [https://i.imgur.com/2rcce0n.png](/assets/img/agora/block-diagram-avr-chip.png)  
**Socrates:** here is a single, simple chip based on the AVR architecture (which competes with ARM in very simple devices, think microwave oven)  
**Socrates:** ARM would sell you the black box in the middle called CPU  
**Socrates:** then you as a manufacturer, say, Rockchip, produce the other boxes  
**Socrates:** AMD or Intel pretty much sell just the black box, but they sell it as a chip, and then you implement stuff in the boxes on the mobo  
**Glaucon:** Intel or AMD would sell you the CPU, but as a product, as a finished chip, right?  
**Socrates:** right  
**Socrates:** you can see in that diagram boxes directly above the CPU IP marked RAM  
**Socrates:** in AVR devices and ARM devices, the ram is on-chip  
**Socrates:** (you can also add extended ram off-chip, or only off-chip ram - its your design, after all)  
**Socrates:** the only person who makes ARM is ARM, and they only sell it as that box, rather than a physical chip  
**Glaucon:** so I still don't get exactly how this makes x86 more open?  
**Socrates:** x86 is made by Intel and AMD, and they sell it as a chip  
**Socrates:** so you have twice as many people producing the same arch, and when you say "there are more ARM manufacturers", really those manufacturers are more akin to mobo manufacturers  
**Glaucon:** is it just that because there's two companies making x86, there's twice as many implementations of the design?  
**Socrates:** that's a good thing, even though the advantage is not really on the open-ness scale  
**Socrates:** its good because thinks like meltdown/spectre affect only one implementation  
**Socrates:** the open-ness area is where it comes to the mobo  
**Glaucon:** so the solution for now is just buy AMD, or be a tinfoil like me and get a Pentium 4  
**Socrates:** anyone can design a mobo and you can just plug an x86 device in, np  
**Socrates:** with ARM, the mobo is closed source, proprietary, and non-interoperable as well  
**Glaucon:** wait wait  
**Glaucon:** that's what I'm missing  
**Glaucon:** why does the mobo have to be closed source?  
**Socrates:** the "mobo" being the rest of the silicon sat along side  
**Glaucon:** is it kinda like an NDA?  
**Glaucon:** where you can't reveal anything about the mobo bc you'd automatically be revealing information about the ARM core itself?  
**Socrates:** the "mobo" for an ARM chip is the silicon that the ARM is embedded into  
**Glaucon:** ahh  
**Socrates:** and the only way you can use this mobo is by the manufacturer like Rockchip giving you blobs to drive it  
**Socrates:** or, if you're allwinner, they give you blobs and GPL violating source code that builds different, crippled, blobs  
**Glaucon:** so x86 is literally more free  
**Glaucon:** I see now  
**Thrasymachus:** My mind is full of fuck  
**Glaucon:** Thrasymachus I'm glad it's not just me  

Stage 3: Bargaining
-------------------

**Glaucon:** I had no idea the situation with ARM was this bad  
**Glaucon:** everyone touts it as some kind of big improvement over x86  
**Glaucon:** but that's not true at all  
**Glaucon:** so the solution is still just getting an old Thinkpad with Libreboot  
**Glaucon:** or something pre-IME  
**Socrates:** ARM is better because of design, not openness  
**Socrates:** ARM's architecture and instruction set makes many fewer mistakes, and carries less cruft than x86  
**Socrates:** which has had to maintain backwards compat with decades of mistakes  
**Socrates:** ARM learned from those  
**Socrates:** RISC-V learns from x86 and ARM, and produces an open IP that anyone can implement  
**Glaucon:** right  
**Glaucon:** I can still boot DOS 1.0 on any modern PC that has a legacy BIOS  
**Glaucon:** (which I love but you know)  
**Glaucon:** not the best for efficiency  
**Glaucon:** hopefully those HiFive boards go down in price  
**Glaucon:** I wouldn't mind spending a few hundred on one  
**Glaucon:** but 1000 is a bit beyond my capability  
**Socrates:** the problem is that the boards cost is locked up in NRE costs  
**Glaucon:** NRE?  
**Socrates:** so those costs never come down, you can only spread them out  
**Socrates:** non-recurring engineering  
**Socrates:** basically upfront design costs  
**Glaucon:** right  
**Socrates:** if it takes $100,000 to make a design, and you plan to sell 100 boards  
**Socrates:** each board has to be $1,000+materials cost+profit margin  
**Socrates:** if you plan to sell 100,000, you can spread the NRE across them all for just $1 a board  
**Glaucon:** My question is though, would you be able to bring the cost down if you had a simpler CPU, like, a 16-bit or 32-bit CPU?  
**Glaucon:** the simpler the CPU, the simpler it is to design and manufacture, no?  
**Socrates:** you cannot design modern CPUs for cheap  
**Socrates:** the level of complexity is too high  
**Glaucon:** right  
**Glaucon:** I'm not talking about a modern CPU  
**Glaucon:** I'm talking about a 16-bit design, let's say  
**Glaucon:** like those home-made 8-bit projects  
**Socrates:** sure  
**Socrates:** you can get 8051s for cheap  
**Socrates:** like, a few dollars  
**Socrates:** the AVR device I linked is like $1.50 in quantity  
**Socrates:** maybe $5/ea?  
**Socrates:** but these devices will never be able to drive an Ethernet connection, so you will need to buy an Ethernet chip  
**Socrates:** OR  
**Socrates:** you could buy the silicon IP for the 8051/AVR and put it alongside the Ethernet silicon IP on a single slice  
**Socrates:** and now we're at the ARM model  
**Glaucon:** I see  
**Glaucon:** but there's open source 8-bit designs, no?  
**Socrates:** show me  
**Glaucon:** I assumed  
**Glaucon:** maybe I'm stupid  
**Socrates:** I mean, they will exist, as hobby projects  
**Socrates:** but nothing anyone would fabricate  
**Glaucon:** why not?  
**Socrates:** fabrication is expensive, and only declines with quantity, it has significant NRE costs to get the fab design to print  
**Socrates:** so the only way you could make open source, cheap, designs is to sell a lot of them  
**Socrates:** you're not going to do that unless you can compete with ARM  
**Socrates:** this is exactly where RISC-V is  
**Glaucon:** right  
**Glaucon:** what about simpler designs for embedded systems?  
**Socrates:** simpler designs for embedded are owned by AVR, PIC, and ARM Cortex based devices  
**Glaucon:** neat  
**Glaucon:** I did not know this  
**Socrates:** there is an end-run around fabrication costs, btw  
**Socrates:** so you could produce an 8 bit, FOSS hobby design and release it for free and people can get it into their products at low-cost  
**Glaucon:** end-run?  
**Socrates:** end-run = trick to get around a defensive line/problem  
**Socrates:** instead of smashing through a line of defenders, run around around the end of them  
**Glaucon:** well that's essentially been my idea  
**Glaucon:** for a while  
**Glaucon:** I've seen people make 8-bit CPUs at home  
**Socrates:** the long and the short is that I could give you an 8-bit (or 16, or 32, or 64, or exotic design of my own creation) for nothing and at scale if you so chose  
**Socrates:** so you can work around the costs of fabrication at unknown scale/volume  
**Socrates:** and this is available for RISC-V today  
**Socrates:** in fact, you could probably build a hobby grade RISC-V computer for &lt;$500  
**Socrates:** and I know the tools for it are all available now  

FPGAs
-----

**Socrates:** come on  
**Socrates:** take the bait  
**Glaucon:** fine go on  
**Socrates:** FPGAs  
**Socrates:** but you trade cost and flexibility here for massive losses in openness  
**Socrates:** all FPGA platforms require proprietary toolchains that only run on windows  
**Socrates:** hardware is designed as software with can be synthesised to different formats of output  
**Socrates:** one format is a pattern of silicon and metal layers for chips  
**Socrates:** one pattern is for FPGAs  
**Socrates:** you can use ARM IP cores on FPGAs  
**Socrates:** (this is why its not as simple as selling silicon)  
**Glaucon:** oh yes no I know  
**Socrates:** ace  
**Glaucon:** I'm very aware of FPGAs  
**Socrates:** if you can stomach your silicon being closed source, but ultra-dumb and generic = secure  
**Socrates:** you should probably look at getting an FPGA and putting RISC-V and some peripheral IP onto it  
**Socrates:** I think OpenCores is still around?  
**Glaucon:** https://uploads.kiwiirc.com/files/270d43cb0f4ff229b5d4a7a4dc27885f/image.png  # *This image link is dead.  Does anyone still have it?  ---Ed*  
**Glaucon:** So you see that big blob on there?  
**Glaucon:** One of the engineers for the project took the entire original mobo of the Atari 2600 and recreated it on an ASIC  
**Glaucon:** which Atari then produced themselves and used on the Atari Flashback 2, they were sold in such high volume that they made it at profit without issue  
**Socrates:** cool  
**Socrates:** fwiw, he probably didn't make it as an ASIC up front  
**Glaucon:** how do you mean  
**Socrates:** he probably made it in an HDL which he demonstrated on an FPGA  
**Socrates:** and then Atari produced it in quantity for the flashback  
**Glaucon:** he may have  
**Glaucon:** this was back in 2003  
**Socrates:** spinning an ASIC costs tens of thousands  
**Glaucon:** I know FPGAs weren't as common back then  
**Socrates:** FPGAs were common back then  
**Glaucon:** well that's fair  
**Glaucon:** they also did this for the Commodore 64 plug and play console they did  
**Glaucon:** I always wanted to do this but as an open source 8-bit PC  
**Socrates:** ill trust you  
**Socrates:** the more I think about this  
**Socrates:** the more I think you should buy yourself a cracked FPGA model and get yourself to <https://opencores.org/>  
**Socrates:** put RISC-V, some USB/display IP on it  
**Socrates:** and you can get a decent computer where you control the entire thing down to the first layer of silicon  
**Socrates:** the silicon is simulated in another bit of silicon, but FPGAs are not really able to fuck you over  
**Socrates:** you'll never be able to fully trust the FPGA, but rest assured that if someone was targeting you at the FPGA level, they would be just as able to compromise the foundry if you ever tried to get your design put into real silicon  
**Glaucon:** I wouldn't mind using an FPGA for developing  
**Glaucon:** it's just that I want my main PC to be cancer free  
**Glaucon:** but I'm a retard  
**Socrates:** so yeah, get yourself an ICE[^ice] family FPGA and build your own CPU  
**Socrates:** it'll be faster than anything you can build yourself in actual hardware  
**Socrates:** and easier  
**Socrates:** network: <https://opencores.org/projects/ethmac>  
**Socrates:** RAM: <https://opencores.org/projects/ddr3_sdram>  
**Socrates:** video: <https://opencores.org/projects/axi_vga_fb>  
**Socrates:** CPU: <https://opencores.org/projects/risc5x>  
**Socrates:** CPU: <https://opencores.org/projects/rv01_RISC-V_core>  
**Socrates:** USB: <https://opencores.org/projects/usb_host_core>  
**Socrates:** put these onto an FPGA and you basically have a working RISC-V computer  
**Glaucon:** damn  
**Socrates:** put it onto an ASIC, and well done, you're an ARM device manufacturer  
**Glaucon:** I had looked at FPGAs to make 386 IBM PC clones  
**Socrates:** s/ARM/RISC-V  
**Glaucon:** what FPGA do you recommend  
**Glaucon:** I kinda wanna do this  
**Socrates:** I mean, this will probably take 2-3 years of learning and a few thousand dollars  
**Socrates:** but the cost is spread out  
**Socrates:** its things like replacing a $300 FPGA board when you trash the first one  
**Glaucon:** mmmmmmmmmmmmm  
**Glaucon:** well my primary interest is in making an 8-bit PC  
**Glaucon:** which would probably be a bit easier  
**Glaucon:** or a PC based on this <https://en.wikipedia.org/wiki/Intel_MCS-48>  
**Socrates:** well, same hardware covers it  
**Socrates:** just you can get the cheaper variant of it  
**Socrates:** there are various FPGAs that have been reversed well enough to be targeted by FOSS toolchains  
**Socrates:** have a look at the butterfly  
**Socrates:** <https://papilio.cc/>  
**Socrates:** an AVR will take 1/2-1/3rd of these devices  
**Glaucon:** what's an AVR?  
**Glaucon:** I still don't quite understand  
**Socrates:** an AVR is a microcontroller  
**Socrates:** same as a low-end ARM device  
**Socrates:** so its a device with compute IP (AVR rather than ARM) and a bunch of on-board peripherals  
**Socrates:** (for example, a serial port, timer modules, SPI/I2C, USB, etc)  
**Socrates:** AVRs are the microcontrollers used by the Arduino family of development boards  
**Socrates:** if you're new hardware, start here  
**Glaucon:** can't I just make a weird FPGA PC with an Intel 4004?  
**Socrates:** sure  
**Socrates:** Arduinos are a much gentler introduction  
**Glaucon:** gentle isn't my thing  

Doing it the hardest way
------------------------

**Socrates:** you're like the guy who comes into #C and says "I want to make an operating system"  
**Socrates:** sure, cool, but start with hello world in python  
**Socrates:** build up to C  
**Socrates:** then build up to the foundations of what you want to do  
**Socrates:** then do it  
**Socrates:** same way: start with Arduino, learn how electronics work, then start with FPGAs, blink a few LEDs, then try your first 3rd party IP, then start thinking about gluing them together  
**Glaucon:** nah nah nah I'll be gucci  
**Socrates:** ok  
**Glaucon:** I'll figure it out from the bottom up  
**Glaucon:** from electricity to circuitry to simple circuits to a simple Intel 4004 PC  
**Socrates:** well, enjoy your paint by numbers CPU but you're going to spent twice as long and twice as much by just slamming yourself into the higher end of it rather than actually learning  
**Socrates:** yes  
**Socrates:** do this with Arduino  
**Socrates:** it solves a lot of the hard stuff and allows you to focus on learning how it works  
**Glaucon:** nah I'll just buy a breadboard we'll be gucci  
**Socrates:** then you can ditch the Arduino software framework, write C directly, understand how co-silicon peripherals interact  
**Socrates:** etc  
**Socrates:** ok  
**Socrates:** well  
**Socrates:** enjoy your timing errors, transparent latches eating 30% of your gate count, and parasitic capacitance meaning you can never find a compromise between stable clock and voltage  
**Glaucon:** I will  
**Glaucon:** thank you very much  
**Glaucon:** Can't I just be like Woz?  
**Glaucon:** Why must you shit on my dreams  

Epilogue
--------

**Polemarchus:** hey could you maybe talk about CPU architectures for two and a half hours? oh you already did?  
**Glaucon:** yeah sorry we can do it again if you'd like  
**Socrates:** fuck, people talking tech in #sqt  
**Socrates:** close the damn doors  

[^rpi]: An 8GB variant of the Raspberry Pi 4 had recently been released: <https://www.raspberrypi.org/blog/8gb-raspberry-pi-4-on-sale-now-at-75/>
[^rtl]: Register Transfer Level: <https://en.wikipedia.org/wiki/Register-transfer_level>
[^ice]: The Lattice iCE line of FPGAs was one of the only FPGA families to have had its bitstream protocol reverse engineered. This enabled a fully FOSS toolchain to be produced, unlike any other in the notoriously proprietary space. <https://en.wikipedia.org/wiki/ICE_(FPGA)#Open_source>
