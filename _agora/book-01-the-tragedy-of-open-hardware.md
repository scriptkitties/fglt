---
title: Book I—The Tragedy of Open Hardware
description: A newcomer to the agora with high hopes for computing freedom has some of the subtleties of the problem explained to him by a channel regular.
layout: default
---

Introduction
------------

Glaucon joins the agora with its usual 30--40 patrons present, most of whom are idling or spectating.  Glaucon has ambitious and unusual goals for his computing environment, and high standards of openness and freedom for the hardware he wants to use, but isn't sure where to start implementing what he wants.  Socrates, one of the regulars, having experience in this area, explains to Glaucon some of the subtleties of hardware being "open" or "closed", and clears up some surprising misconceptions that Glaucon likely shares with others in his position.

Dramatis personae
-----------------

In order of appearance:

* <span class="name">Glaucon</span>, a Cretin visitor to the agora, with grand ideals of freedom and minimalism in computing  
* <span class="name">Thrasymachus</span>, a self-taught Ithacan sysadmin with no engineering knowledge
* <span class="name">Socrates</span>, famed philosopher-engineer of Athens  
* <span class="name">Adeimantus</span>, another Cretin, a regular visitor, impatient with his countryman's idealism  
* <span class="name">Polemarchus</span>, a Spartan  

Prelude
-------

*<span class="name">Glaucon</span> joins the agora for the first time.  Those already present have just finished a bracing discussion on the applicability of blockchain technology to dishwashers.*

<b class="name">Glaucon:</b> why hello  
<b class="name">Glaucon:</b> I need some help with something   
<b class="name">Glaucon:</b> Does anyone know of any completely free hardware computers? I'm looking and I can't find any  
<b class="name">Thrasymachus:</b> Who wants to tell him  
<b class="name">Glaucon:</b> I thought there were at least one or two  
<b class="name">Glaucon:</b> like a weak 16-bit/32-bit one at least  
<b class="name">Socrates:</b> Thrasymachus: why didn't you mention POWER?  
<b class="name">Thrasymachus:</b> ?  
<b class="name">Socrates:</b> POWER is a remarkably open architecture  
<b class="name">Thrasymachus:</b> I wonder if it would meet Glaucon's high standards  
<b class="name">Adeimantus:</b> it's too new  
<b class="name">Adeimantus:</b> only the oldest workable tech will do, because performance is bloat  
<b class="name">Socrates:</b> Thinkpad with pre-ME CPU, Libreboot, and Trisquel  
<b class="name">Socrates:</b> no networking because I haven't found an ISP that will give me the source to their CRM  
<b class="name">Glaucon:</b> people on /g/ are saying system76 but that's not at all what I'm looking for  
<b class="name">Glaucon:</b> they're all Intel or AMD CPUs  
<b class="name">Glaucon:</b> Pinebook is closer  

The spectre of management engines
---------------------------------

<b class="name">Thrasymachus:</b> Socrates may be able to help you  
<b class="name">Glaucon:</b> hi Socrates  
<b class="name">Socrates:</b> <https://www.raptorcs.com/content/TL2B01/intro.html>  
<b class="name">Glaucon:</b> &gt;OpenPOWER  
<b class="name">Glaucon:</b> BEAUTIFUL  
<b class="name">Socrates:</b> POWER arch, auditable/disablable management  
<b class="name">Glaucon:</b> this is exactly what I was looking for  
<b class="name">Thrasymachus:</b> Socrates wins  
<b class="name">Glaucon:</b> management?  
<b class="name">Glaucon:</b> like IME?  
<b class="name">Socrates:</b> OpenBMC  
<b class="name">Socrates:</b> <https://github.com/openbmc/openbmc>  
<b class="name">Glaucon:</b> this is its own OS?  
<b class="name">Glaucon:</b> I'm still a bit lost  
<b class="name">Socrates:</b> Intel ME is a small CPU tacked on the side running Minix  
<b class="name">Socrates:</b> like it or not, management is actually pretty cool and useful  
<b class="name">Socrates:</b> the reason why ME is shit is because it's not owned by you, so while you can control it (and it is useful for everybody), people don't trust Intel to make it secure and safe against economic/political pressures  
<b class="name">Glaucon:</b> what if I wanted to avoid it entirely  
<b class="name">Glaucon:</b> that's why I bought a 2003 Tower to begin with  
<b class="name">Socrates:</b> then disable it  
<b class="name">Glaucon:</b> there must be an option to have it not be there at all  
<b class="name">Socrates:</b> probably, if you email them they'll probably ship it nulled out  
<b class="name">Socrates:</b> or give you instructions on how to do the same  
<b class="name">Glaucon:</b> do you know of any other boards like this you could link?  
<b class="name">Socrates:</b> nothing at this level ships without management  
<b class="name">Socrates:</b> (its not inherently bad)  
<b class="name">Socrates:</b> its basically just Wake-on-LAN but extended  
<b class="name">Glaucon:</b> what does ship without management  
<b class="name">Socrates:</b> to get stuff that ships without management you have to go into the low end devices that are used by people who don't care about openness  
<b class="name">Socrates:</b> but genuinely, management is orthogonal to openness/security  
<b class="name">Glaucon:</b> such as?  
<b class="name">Glaucon:</b> ah shit, this board is $4k  
<b class="name">Glaucon:</b> lmao  
<b class="name">Socrates:</b> I mean, if you buy old pre-ME business laptops, they're probably the best trade-off between good devices  
<b class="name">Glaucon:</b> that's what I figured  
<b class="name">Socrates:</b> but really, don't ask for "no management", ask for management you can control  
<b class="name">Socrates:</b> its the difference between &lt;manufacturer BIOS&gt; and Libreboot, etc  
<b class="name">Socrates:</b> <https://en.wikipedia.org/wiki/OpenBMC> is probably a better explanation  
<b class="name">Glaucon:</b> so there essentially aren't affordable options for open source CPUs at all  
<b class="name">Socrates:</b> OpenPOWER  
<b class="name">Socrates:</b> as was linked  
<b class="name">Socrates:</b> if you want to wait another decade, we might get some traction in RISC-V  
<b class="name">Socrates:</b> but for now, RISC-V competes with ARM, not Intel/AMD  
<b class="name">Glaucon:</b> that thing was 4000 bux  
<b class="name">Socrates:</b> listen bud freedom doesn't come free  
<b class="name">Socrates:</b> [https://i.kym-cdn.com/photos/images/newsfeed/000/856/704/8b2.jpg](/assets/img/agora/freedom-aint-free.jpg)  
<b class="name">Glaucon:</b> praise Jesus  
<b class="name">Thrasymachus:</b> fugg  

The economics of open hardware
------------------------------

<b class="name">Glaucon:</b> I don't understand why I can't get an SBC with an open source CPU  
<b class="name">Socrates:</b> that's because you don't understand market economics, but that's OK  
<b class="name">Socrates:</b> if SBC grade is what you're looking for, you can get RISC-V now for a shit perf:$ ratio, but a low absolute cost  
<b class="name">Glaucon:</b> okay  
<b class="name">Glaucon:</b> but a few hundred dollars would be possible  
<b class="name">Glaucon:</b> not just 4k  
<b class="name">Socrates:</b> probably we're talking Raspberry Pi perf for the cost of a decent laptop  
<b class="name">Glaucon:</b> yeah that's reasonable  
<b class="name">Socrates:</b> and no software support  
<b class="name">Socrates:</b> <https://www.sifive.com/boards>  
<b class="name">Thrasymachus:</b> I think I need to learn something about RISC-V  
<b class="name">Socrates:</b> basically just imagine the ARM product line but open source  
<b class="name">Thrasymachus:</b> I ain't mad at that  
<b class="name">Socrates:</b> looks like you can get an unleashed board for ~$1000  
<b class="name">Glaucon:</b> still a bit high  
<b class="name">Glaucon:</b> but much more reasonable  
<b class="name">Glaucon:</b> maybe I'll take the dive eventually  
<b class="name">Socrates:</b> sadly, that's the two ends of the spectrum right now  
<b class="name">Glaucon:</b> It's getting better  
<b class="name">Socrates:</b> you can get an Raspberry Pi for $1000, or you can get a POWER workstation for $5000  
<b class="name">Glaucon:</b> I might just get one of those Rockchip SBCs instead  
<b class="name">Glaucon:</b> or ARM SBCs  
<b class="name">Glaucon:</b> I don't have 1000 bux to drop on a PC I want to use rarely  
<b class="name">Socrates:</b> Rockchip is ARM  
<b class="name">Glaucon:</b> right  
<b class="name">Glaucon:</b> well either way  
<b class="name">Socrates:</b> is Mali open source?  
<b class="name">Socrates:</b> I thought it needed blobs  
<b class="name">Socrates:</b> oh, ARM give you some open source userspace drivers  
<b class="name">Socrates:</b> standby for 0 perf lmoa :(((  
<b class="name">Glaucon:</b> if I was gonna just get an ARM SBC do you have any suggestions  
<b class="name">Glaucon:</b> I know the banana pi is mostly open software/hardware  
<b class="name">Socrates:</b> what's your use case?  
<b class="name">Glaucon:</b> I need about 1GHz CPU and 1-2GB of RAM, I've been using an old 2003 Dell Tower for minimalist Linux, right now Alpine, and a simple web browser, text-based email client, text-based torrent client, text-based IRC client, and like mpv or something  
<b class="name">Glaucon:</b> that's about it  
<b class="name">Socrates:</b> no, tell me your use case  
<b class="name">Glaucon:</b> that's my use case  
<b class="name">Socrates:</b> what you're upgrading from  
<b class="name">Glaucon:</b> I don't understand  
<b class="name">Glaucon:</b> that's what I'm upgrading from, that tower, do you want the model  
<b class="name">Socrates:</b> OK  
<b class="name">Socrates:</b> just get whatever the most-FOSS SBC you can find is  
<b class="name">Socrates:</b> but just remember that half of them aren't actually FOSS  
<b class="name">Socrates:</b> (either because they are crippled when running FOSS only, or they ship violating blobs)  
<b class="name">Thrasymachus:</b> Way to crush his dreams, Socrates  
<b class="name">Glaucon:</b> yeah it's not a great situation right now  
<b class="name">Socrates:</b> Thrasymachus: he wants everything for nothing, the only solution they have is to pay and support showing that its a workable market, or to just deal with compromise  
<b class="name">Socrates:</b> or sit on his hands and hope the rest of the world carries them I guess  
<b class="name">Glaucon:</b> <http://nonfree.pizza/>  
<b class="name">Glaucon:</b> I don't want everything for nothing  
<b class="name">Glaucon:</b> I want to know what my options are  
<b class="name">Glaucon:</b> I don't know much about open source hardware so I'm learning  
<b class="name">Glaucon:</b> I only just jumped off from using Windows 10 daily lmao  
<b class="name">Socrates:</b> I really suggest you understand what management is though, because you went from "I don't know where OpenBMC sits in the stack" to "management bad"  
<b class="name">Socrates:</b> so you p much only know the "IME is bad" bit of the story, which is absolutely true, but only one page of a very large book  
<b class="name">Glaucon:</b> I never said management bad  
<b class="name">Glaucon:</b> I asked if there was anything I could get with no management  
<b class="name">Glaucon:</b> to understand the range of these devices  
<b class="name">Socrates:</b> you said you didn't want management at all, which pigeonholes you to "very old" or "very low end"  
<b class="name">Glaucon:</b> I don't mind very old  
<b class="name">Glaucon:</b> the problem is very old is often very proprietary as well  
<b class="name">Socrates:</b> management is now the default, so you need to make some compromise: remove it, at cost, or pick something old, at a performance penalty, or pick something low end, at a perf penalty, or pick something where the management is open, at a cost  
<b class="name">Glaucon:</b> I also wanna avoid x86 bc then I can pigeonhole myself into only using Linux/BSD  
<b class="name">Socrates:</b> interesting statement  
<b class="name">Socrates:</b> pick x86\_64 and you get to run anything, including a better range of Linux, and other interesting stuff like Haiku, Plan 9, etc  
<b class="name">Glaucon:</b> that's the opposite of what I want  
<b class="name">Glaucon:</b> I don't want to run anything  
<b class="name">Glaucon:</b> if I did I'd have kept my gaming PC  
<b class="name">Adeimantus:</b> then why are you even here?  
<b class="name">Socrates:</b> ascetic minimalism and restriction comes at the cost of your own experience  
<b class="name">Glaucon:</b> perfect  
<b class="name">Glaucon:</b> that's exactly what I want  
<b class="name">Socrates:</b> then get a Filofax and some stamps  
<b class="name">Socrates:</b> the computing world is not for you  
<b class="name">Socrates:</b> you've been had, and you're taking the /g/ minimal desktop thread meme way too hard  
<b class="name">Glaucon:</b> nah, I'm enjoying myself  
<b class="name">Glaucon:</b> I just want to take the next step and get more open hardware  
<b class="name">Socrates:</b> well  
<b class="name">Socrates:</b> you say that but you're not willing to take what comes with that  
<b class="name">Socrates:</b> buying cheap SBCs is usually non-free, even when they have "FOSS" on the sticker  
<b class="name">Socrates:</b> usually by taking the allwinner route  
<b class="name">Glaucon:</b> because it doesn't have to be expensive  
<b class="name">Glaucon:</b> it is currently  
<b class="name">Socrates:</b> the only way to make it not expensive is to support the market now  
<b class="name">Adeimantus:</b> it has to be expensive when you have low demand and high costs due to lack of scale  
<b class="name">Glaucon:</b> nah  
<b class="name">Socrates:</b> like, Raptor are seriously, seriously thinking about pulling from the market  
<b class="name">Socrates:</b> because they cant make the economics work  
<b class="name">Socrates:</b> because of what Adeimantus said  
<b class="name">Glaucon:</b> then buy it yourself? I'm not gonna buy a 1000 dollar PC  
<b class="name">Glaucon:</b> it doesn't have to cost that much  
<b class="name">Socrates:</b> like I said, you don't understand market economics  
<b class="name">Socrates:</b> it doesn't have to cost that much, but you have to overcome a more expensive period to push through to the garden of Eden  
<b class="name">Glaucon:</b> the thing is  
<b class="name">Glaucon:</b> a cheap chinese SBC is still preferable to an x86 tower  
<b class="name">Glaucon:</b> in this case  
<b class="name">Glaucon:</b> and I don't have 1000 dollars  
<b class="name">Socrates:</b> OK, but a cheap chinese SBC will not be any more free  
<b class="name">Socrates:</b> instead you're just going to be more limited  
<b class="name">Glaucon:</b> a Rockchip is more open than an Intel CPU  
<b class="name">Glaucon:</b> lol  
<b class="name">Glaucon:</b> not by much but it is  
<b class="name">Thrasymachus:</b> Going in circles now  
<b class="name">Glaucon:</b> because he's bitching that I'm not gonna spend a thousand dollars on this PC, and he's saying I'm not living in reality by saying "the reality is I don't have that kind of money so I'm going to do what I can to avoid this proprietary shithole on my budget"  
<b class="name">Socrates:</b> people like allwinner say they are free, but the fact is they mostly sit somewhere around "never actually discloses source", "source disclosed builds and runs but is clearly not what shipped and is much lower quality (bait and switch)", or "rancid GPL violations"  
<b class="name">Socrates:</b> I'm fully aware of your goals  
<b class="name">Socrates:</b> I'm saying that the volume of options when you're honest to those limitations is 0  
<b class="name">Socrates:</b> so you can either relax cost, or you can relax openness  
<b class="name">Glaucon:</b> who do you know that can just relax cost  
<b class="name">Thrasymachus:</b> People with $1000  
<b class="name">Socrates:</b> most people can relax cost by saving  
<b class="name">Glaucon:</b> I'd like to meet them, that they can just decide they have a bigger budget on the fly  
<b class="name">Glaucon:</b> I'm relaxing openness   
<b class="name">Glaucon:</b> And I still think getting an ARM Banana Pi or something is a better option than buying a new Wintel tower  
<b class="name">Socrates:</b> OK, then accept that any SBC you have is going to be loaded with blobs out the foundry  
<b class="name">Glaucon:</b> When did I say that I didn't accept this  
<b class="name">Socrates:</b> you came in here saying you wanted to be more open  
<b class="name">Glaucon:</b> Okay but when did I say that I didn't accept that  
<b class="name">Glaucon:</b> that doesn't answer the question I just asked  
<b class="name">Socrates:</b> x86 platforms are pretty much more open by the virtue of choice, population of freedom-desiring users, and need to interoperate  
<b class="name">Glaucon:</b> it doesn't feel very open to me if I can only buy from Intel or AMD, that's not virtue of choice  
<b class="name">Glaucon:</b> At least ARM has plenty of companies producing them  
<b class="name">Socrates:</b> you know that ARM only sells IP I'm sure  
<b class="name">Glaucon:</b> I don't know what this means, no  
<b class="name">Glaucon:</b> only sells Intellectual Property?  
<b class="name">Glaucon:</b> as in they don't make chips?  
<b class="name">Socrates:</b> correct  

The false promises of ARM
-------------------------

<b class="name">Socrates:</b> most ARM chips are completely non-replaceable by other devices  
<b class="name">Socrates:</b> they are interchangeable above the CPU level because they all present an ARM interface to software  
<b class="name">Socrates:</b> but the firmware used to make them work is usually non-open  
<b class="name">Socrates:</b> so if you buy a chinese SBC, the only people making firmware for that are the manufacturer  
<b class="name">Glaucon:</b> it doesn't have to be Chinese  
<b class="name">Socrates:</b> if you ask them for the source, they will generally either not respond, send you GPL-violating source, or send you source code that is clearly not what is running on the board, because it is buggy, slow, or requires significant adjustments to target the silicon  
<b class="name">Glaucon:</b> I just said that as an example  
<b class="name">Socrates:</b> well, the point is general  
<b class="name">Socrates:</b> I'm sorry, but you've come into this channel and you seem to have accepted my expertise when you were asking me questions about different architectures like power, RISC-V, etc  
<b class="name">Socrates:</b> but now when I'm telling you uncomfortable truth you call it bitching  
<b class="name">Glaucon:</b> No I get it  
<b class="name">Glaucon:</b> I'm just saying  
<b class="name">Glaucon:</b> I still don't see why I'd buy a Wintel laptop/tower over an ARM SBC  
<b class="name">Socrates:</b> ARM SBCs are less open  
<b class="name">Socrates:</b> and less capable  
<b class="name">Glaucon:</b> less capable I don't care  
<b class="name">Glaucon:</b> less open I get  
<b class="name">Adeimantus:</b> "I want to use tech as little as possible and just be done with it"  
<b class="name">Adeimantus:</b> "I also want to go out of my way to use the most hipster shit imaginable, exponentially increasing my time spent on this tech I hate and dramatically limiting my options in getting shit done"  
<b class="name">Adeimantus:</b> do you even listen to yourself dude?  
<b class="name">Socrates:</b> if you just want the cheapest thing you can get as just get on with it, just get the cheap new Raspberry Pi[^rpi] that came out  
<b class="name">Glaucon:</b> What do you want though, should I just keep using a Windows 10 laptop  
<b class="name">Socrates:</b> I want you to drop the pretense  
<b class="name">Glaucon:</b> There is no pretense  
<b class="name">Glaucon:</b> I want this thing  
<b class="name">Socrates:</b> then stop saying that openness is so important to you  
<b class="name">Glaucon:</b> it doesn't exist largely  
<b class="name">Glaucon:</b> that's okay  
<b class="name">Socrates:</b> correct  
<b class="name">Glaucon:</b> But I can get closer to it  
<b class="name">Socrates:</b> or rather, it exists, but outside the limitations you put on your search  
<b class="name">Glaucon:</b> well yes it exists in workstation motherboards and such  
<b class="name">Socrates:</b> if you want open and cheap, get an Raspberry Pi: the only thing that its really missing is a manufacturer provided GPU driver in free code  
<b class="name">Glaucon:</b> yeah that's probably the best option  
<b class="name">Socrates:</b> I'm pretty sure you can still boot it with entirely free software but the perf is abysmal  
<b class="name">Glaucon:</b> perfect  
<b class="name">Socrates:</b> but its extremely well supported generally, so you're not going to spend your entire life debugging issues with it and recompiling software with a substandard toolchain  
<b class="name">Socrates:</b> but you need to accept that this is not really any more free than a modern x86\_64 device  
<b class="name">Socrates:</b> where you can run FOSS BIOS, FOSS bootloader, FOSS OS, use entirely FOSS drivers with little restriction in devices, and null out the stuff you cant  
<b class="name">Glaucon:</b> it's also about production  
<b class="name">Socrates:</b> and you get way better bang for your buck  
<b class="name">Glaucon:</b> only two companies make x86 CPUs  
<b class="name">Glaucon:</b> and that bothers me as well  
<b class="name">Socrates:</b> to be clear, whatever ARM device you pick, only 1 manufacturer will ever produce that  
<b class="name">Glaucon:</b> yes, I'm aware of this  
<b class="name">Socrates:</b> this isn't the same as the analogy you're drawing in your head  
<b class="name">Glaucon:</b> I think you misunderstand  
<b class="name">Glaucon:</b> I know only one manufacturer will only ever make any particular ARM device  
<b class="name">Socrates:</b> OK, let me reframe it  
<b class="name">Socrates:</b> ARM-based chips are motherboards  
<b class="name">Socrates:</b> the only replaceable part is the ARM IP core  
<b class="name">Glaucon:</b> that's fine with me  
<b class="name">Socrates:</b> everything else in an ARM chip is proprietary  
<b class="name">Glaucon:</b> I get this  
<b class="name">Socrates:</b> the idea that "only two corps make x86" vs "lots of people make ARM based stuff" is much more like "one one person makes ARM (ARM)" and "but lots of people make ARM/86 mobos"  
<b class="name">Socrates:</b> ARM is more restricted at the architecture level (only ARM gets a say because its proprietary IP - any company can use the x86 arch essentially, but only ARM can make ARM processors)  
<b class="name">Socrates:</b> but they sell those processors as sub-chips you can integrate onto your own proprietary silicon to make a whole chip  
<b class="name">Glaucon:</b> alright alright  
<b class="name">Socrates:</b> the example at my company: we had large swathes of silicon specially designed for high speed laser control  
<b class="name">Glaucon:</b> I'm trying to understand  
<b class="name">Socrates:</b> but we didn't want to implement the CPU to control it, so we bought ARM silicon to go alongside it on the chip  
<b class="name">Glaucon:</b> you were using ASICs for the laser control?  
<b class="name">Socrates:</b> yes, but ASIC is a very general methodological term  
<b class="name">Socrates:</b> ARM based devices are all ASICs  
<b class="name">Socrates:</b> we would prototype on FPGA with ARM softcores and then either deploy FPGAs on the high end products, or where the scale was there, spin a few thousand chips at foundry  
<b class="name">Glaucon:</b> <https://en.wikipedia.org/wiki/Arm_Holdings#Arm_core_licensees>  
<b class="name">Glaucon:</b> this is a big list of licensees  
<b class="name">Socrates:</b> but this is what all ARM licensors do: they buy the ARM CPU, then they build interconnect silicon, clock silicon, etc and wrap it  
<b class="name">Glaucon:</b> but you're saying they all all buy ARM CPUs and then just add on to them?  
<b class="name">Socrates:</b> yes  
<b class="name">Glaucon:</b> no way  
<b class="name">Glaucon:</b> really?  
<b class="name">Socrates:</b> "ARM CPU" is just basically the ALU, decoder, pipeline, etc  
<b class="name">Socrates:</b> this is what they sell as IP  
<b class="name">Glaucon:</b> So every ARM CPU does come from the same factories at the end of the day?  
<b class="name">Socrates:</b> your job is to wrap it with silicon specific to your market/use case  
<b class="name">Glaucon:</b> just like x86?  
<b class="name">Socrates:</b> you don't understand how device manufacturing works, but "yes"  
<b class="name">Socrates:</b> ARM sell patterns of silicon wafer that you are not allowed to look at for how it works, but the silicon wafer has known edges that you can interface with, and what you do is put your own silicon up to those edges  
<b class="name">Socrates:</b> so only one person "manufactures" ARM, but they don't actually make any product  
<b class="name">Socrates:</b> they sell the patterns of transistors  
<b class="name">Socrates:</b> you're not allowed to look at how they work, but they do let you also buy a manual explaining what the transistors have as an interface, typically memory and control lines  
<b class="name">Socrates:</b> like I said, its more like buying a CPU and building the motherboard around it  
<b class="name">Socrates:</b> but you put the motherboard into the silicon wafer right beside the ARM CPU instead of connecting to it via the pins on the device package  
<b class="name">Glaucon:</b> right  
<b class="name">Glaucon:</b> that's what I was imagining   
<b class="name">Socrates:</b> now, its unhelpful to have to physically sell slices of silicon that people weld onto your silicon, so instead they sell the pattern of silicon. you then arrange your pattern of silicon around it, and send the whole thing off to manufacture  
<b class="name">Glaucon:</b> so they let you buy the IP  
<b class="name">Glaucon:</b> but they only let you know how certain things work  
<b class="name">Glaucon:</b> then you can manufacture the CPU yourself, and have your own devices interface with it?  
<b class="name">Glaucon:</b> am I getting it?  
<b class="name">Socrates:</b> no  
<b class="name">Glaucon:</b> okay  

Metaphor for software brainlets
-------------------------------

<b class="name">Socrates:</b> what is a CPU, describe it to me  
<b class="name">Socrates:</b> what does it look and feel like  
<b class="name">Glaucon:</b> Well it looks like a small circuit integrated into a small silicon wafer, that's designed for general case computing  
<b class="name">Socrates:</b> no  
<b class="name">Socrates:</b> lets move to a software analogy  
<b class="name">Glaucon:</b> okay then you explain it  
<b class="name">Socrates:</b> most people see a CPU like an executable  
<b class="name">Socrates:</b> you buy it and make it part of your system  
<b class="name">Socrates:</b> what ARM do is they sell you precompiled library and header files  
<b class="name">Socrates:</b> you can then use these to fill in the blanks of your own software and link it into a static executable at the end  
<b class="name">Socrates:</b> x86 device: precompiled static executable, a piece of hardware  
<b class="name">Socrates:</b> ARM device: precompiled static executable, compromising static objects produced mainly by a manufacturer, but with one ARM static object that only ARM produce  
<b class="name">Socrates:</b> there are two manufacturers of x86, there is only one manufacturer of ARM. but whereas you integrate x86 at the chip and motherboard level, you integrate ARM IP at the silicon design level  
<b class="name">Socrates:</b> you buy an x86 CPU from Intel or AMD and plug it into your motherboard  
<b class="name">Socrates:</b> you buy the equally opaque ARM RTL[^rtl] output from ARM and plug it into your own hardware-source-code  
<b class="name">Socrates:</b> the only thing you do is the printing of their design onto silicon  
<b class="name">Glaucon:</b> so ARM is selling you a silicon design?  
<b class="name">Glaucon:</b> and then you produce the IC?  
<b class="name">Glaucon:</b> adding on whatever you need  
<b class="name">Socrates:</b> yes  
<b class="name">Glaucon:</b> dude that's what I was trying to say earlier  
<b class="name">Glaucon:</b> I understood  
<b class="name">Socrates:</b> you cant say you understand and then say "but there are more ARM manufacturers than just the two x86"  
<b class="name">Glaucon:</b> no well I didn't initially  
<b class="name">Glaucon:</b> but when you started explaining about the IP I did  
<b class="name">Socrates:</b> here's a real example: when people found meltdown/spectre, it only affects Intel, and not AMD  
<b class="name">Socrates:</b> if people found something like this in ARM, every single ARM device would be hit  
<b class="name">Socrates:</b> because no one produces alternative implementations of ARM  
<b class="name">Socrates:</b> is there inter-implementation spying between Intel and AMD? almost certainly  
<b class="name">Socrates:</b> but that's because they're looking for ways to make their own implementation of x86 better  
<b class="name">Socrates:</b> no one produces competing ARM architecture because you couldn't sell it  
<b class="name">Socrates:</b> if you had the skill to reverse it and sell it, you'd turn that skill to competing as not-ARM, like RISC-V has  
<b class="name">Glaucon:</b> so essentially  
<b class="name">Glaucon:</b> with ARM in the market, we're no better off than we were before ARM  
<b class="name">Glaucon:</b> it's the same shit  
<b class="name">Glaucon:</b> it's only stuff like OpenPOWER and RISC-V that are actually making any difference  
<b class="name">Socrates:</b> ARM is the same shit but worse, because the market is hyperfragmented so there is no coherent userbase to make free firmware on top of ARM based devices, and the fact that they sell arch IP rather than sell an implementation of means that ARM has no competitor  
<b class="name">Glaucon:</b> I know I come off as arrogant and stupid but I did already know that the words "free" and "open" are almost entirely buzzwords  
<b class="name">Glaucon:</b> nothing is free/open in computers  
<b class="name">Glaucon:</b> it's why the only feasible solution is to lessen your reliance on tech  
<b class="name">Glaucon:</b> I mean, I can't have an open source car, but I can have a horse  
<b class="name">Glaucon:</b> is how I'll put it  
<b class="name">Glaucon:</b> has anyone reverse engineered ARM chips?  
<b class="name">Socrates:</b> yes, same as people have reverse engineered early x86 devices  
<b class="name">Socrates:</b> but reversing silicon of this kind of way is generally uninteresting  
<b class="name">Socrates:</b> you don't need to reverse the silicon to make a competitor x86 processor, likewise, you can implement an ARM processor without ever seeing the silicon than ARM sell  

The market realities of reverse engineering
-------------------------------------------

*The Ithacan sysadmin <span class="name">Thrasymachus</span>, now intrigued, suspends his heckling to ask a question.*

<b class="name">Thrasymachus:</b> This is all very new to me, so I'll ask the dumb question  
<b class="name">Thrasymachus:</b> "Then why don't people do that?  Only legal pressure?"  
<b class="name">Socrates:</b> ARM IP targets the people who don't want to make their own processor. if you can reverse and reimplement ARM, you could make your own non-ARM IP and not pay them  
<b class="name">Socrates:</b> its like saying "why does no one reverse engineer a car engine": if you were in a position where you had the skills to reverse engineer an engine and build one, you probably could just design your own engine anyway  
<b class="name">Socrates:</b> the problem is that hardware has far more moving parts, some of which are open and some of which are not  
<b class="name">Socrates:</b> free/open in hardware is a multi-layer, multi-dimensional spectrum  
<b class="name">Socrates:</b> people think this about software, but its not really true  
<b class="name">Thrasymachus:</b> I'm really glad I was awake to observe this  
<b class="name">Thrasymachus:</b> I don't think I'd ever grasped the enormous subtleties of the question "is it open?" as it pertains to hardware before this  
<b class="name">Thrasymachus:</b> You have evidently thought about this a lot  
<b class="name">Glaucon:</b> everyone who cares about openness has thought about this a lot  
<b class="name">Thrasymachus:</b> It's not fair to say that; I'm ignorant of hardware, but freedom/openness has been a central interest of mine pretty much since I first booted Ubuntu  
<b class="name">Thrasymachus:</b> Until Socrates clarified it for you just then, with me watching, I wouldn't even have known where to begin  
<b class="name">Socrates:</b> hardware is much more like a world where everyone implements and sells static libraries, and your end product is an executable  
<b class="name">Thrasymachus:</b> This is the first time that has really made sense to me  
<b class="name">Socrates:</b> to be clear, the executable here is only a single chip  
<b class="name">Socrates:</b> you still need to then build that into a much larger design to be useful  
<b class="name">Socrates:</b> hardware is a fractal of complexity with every layer being an abstraction to a whole 'nother industry  
<b class="name">Socrates:</b> software is really easy because everything is self contained and 1D, 2D at most if you count talking across the syscall line  

The practical openness of x86
-----------------------------

<b class="name">Socrates:</b> actually, why am I still describing this with words  
<b class="name">Socrates:</b> [https://i.imgur.com/2rcce0n.png](/assets/img/agora/block-diagram-avr-chip.png)  
<b class="name">Socrates:</b> here is a single, simple chip based on the AVR architecture (which competes with ARM in very simple devices, think microwave oven)  
<b class="name">Socrates:</b> ARM would sell you the black box in the middle called CPU  
<b class="name">Socrates:</b> then you as a manufacturer, say, Rockchip, produce the other boxes  
<b class="name">Socrates:</b> AMD or Intel pretty much sell just the black box, but they sell it as a chip, and then you implement stuff in the boxes on the mobo  
<b class="name">Glaucon:</b> Intel or AMD would sell you the CPU, but as a product, as a finished chip, right?  
<b class="name">Socrates:</b> right  
<b class="name">Socrates:</b> you can see in that diagram boxes directly above the CPU IP marked RAM  
<b class="name">Socrates:</b> in AVR devices and ARM devices, the ram is on-chip  
<b class="name">Socrates:</b> (you can also add extended ram off-chip, or only off-chip ram - its your design, after all)  
<b class="name">Socrates:</b> the only person who makes ARM is ARM, and they only sell it as that box, rather than a physical chip  
<b class="name">Glaucon:</b> so I still don't get exactly how this makes x86 more open?  
<b class="name">Socrates:</b> x86 is made by Intel and AMD, and they sell it as a chip  
<b class="name">Socrates:</b> so you have twice as many people producing the same arch, and when you say "there are more ARM manufacturers", really those manufacturers are more akin to mobo manufacturers  
<b class="name">Glaucon:</b> is it just that because there's two companies making x86, there's twice as many implementations of the design?  
<b class="name">Socrates:</b> that's a good thing, even though the advantage is not really on the open-ness scale  
<b class="name">Socrates:</b> its good because thinks like meltdown/spectre affect only one implementation  
<b class="name">Socrates:</b> the open-ness area is where it comes to the mobo  
<b class="name">Glaucon:</b> so the solution for now is just buy AMD, or be a tinfoil like me and get a Pentium 4  
<b class="name">Socrates:</b> anyone can design a mobo and you can just plug an x86 device in, np  
<b class="name">Socrates:</b> with ARM, the mobo is closed source, proprietary, and non-interoperable as well  
<b class="name">Glaucon:</b> wait wait  
<b class="name">Glaucon:</b> that's what I'm missing  
<b class="name">Glaucon:</b> why does the mobo have to be closed source?  
<b class="name">Socrates:</b> the "mobo" being the rest of the silicon sat along side  
<b class="name">Glaucon:</b> is it kinda like an NDA?  
<b class="name">Glaucon:</b> where you can't reveal anything about the mobo bc you'd automatically be revealing information about the ARM core itself?  
<b class="name">Socrates:</b> the "mobo" for an ARM chip is the silicon that the ARM is embedded into  
<b class="name">Glaucon:</b> ahh  
<b class="name">Socrates:</b> and the only way you can use this mobo is by the manufacturer like Rockchip giving you blobs to drive it  
<b class="name">Socrates:</b> or, if you're allwinner, they give you blobs and GPL violating source code that builds different, crippled, blobs  
<b class="name">Glaucon:</b> so x86 is literally more free  
<b class="name">Glaucon:</b> I see now  
<b class="name">Thrasymachus:</b> My mind is full of fuck  
<b class="name">Glaucon:</b> Thrasymachus I'm glad it's not just me  

Stage 3: Bargaining
-------------------

<b class="name">Glaucon:</b> I had no idea the situation with ARM was this bad  
<b class="name">Glaucon:</b> everyone touts it as some kind of big improvement over x86  
<b class="name">Glaucon:</b> but that's not true at all  
<b class="name">Glaucon:</b> so the solution is still just getting an old Thinkpad with Libreboot  
<b class="name">Glaucon:</b> or something pre-IME  
<b class="name">Socrates:</b> ARM is better because of design, not openness  
<b class="name">Socrates:</b> ARM's architecture and instruction set makes many fewer mistakes, and carries less cruft than x86  
<b class="name">Socrates:</b> which has had to maintain backwards compat with decades of mistakes  
<b class="name">Socrates:</b> ARM learned from those  
<b class="name">Socrates:</b> RISC-V learns from x86 and ARM, and produces an open IP that anyone can implement  
<b class="name">Glaucon:</b> right  
<b class="name">Glaucon:</b> I can still boot DOS 1.0 on any modern PC that has a legacy BIOS  
<b class="name">Glaucon:</b> (which I love but you know)  
<b class="name">Glaucon:</b> not the best for efficiency  
<b class="name">Glaucon:</b> hopefully those HiFive boards go down in price  
<b class="name">Glaucon:</b> I wouldn't mind spending a few hundred on one  
<b class="name">Glaucon:</b> but 1000 is a bit beyond my capability  
<b class="name">Socrates:</b> the problem is that the boards cost is locked up in NRE costs  
<b class="name">Glaucon:</b> NRE?  
<b class="name">Socrates:</b> so those costs never come down, you can only spread them out  
<b class="name">Socrates:</b> non-recurring engineering  
<b class="name">Socrates:</b> basically upfront design costs  
<b class="name">Glaucon:</b> right  
<b class="name">Socrates:</b> if it takes $100,000 to make a design, and you plan to sell 100 boards  
<b class="name">Socrates:</b> each board has to be $1,000+materials cost+profit margin  
<b class="name">Socrates:</b> if you plan to sell 100,000, you can spread the NRE across them all for just $1 a board  
<b class="name">Glaucon:</b> My question is though, would you be able to bring the cost down if you had a simpler CPU, like, a 16-bit or 32-bit CPU?  
<b class="name">Glaucon:</b> the simpler the CPU, the simpler it is to design and manufacture, no?  
<b class="name">Socrates:</b> you cannot design modern CPUs for cheap  
<b class="name">Socrates:</b> the level of complexity is too high  
<b class="name">Glaucon:</b> right  
<b class="name">Glaucon:</b> I'm not talking about a modern CPU  
<b class="name">Glaucon:</b> I'm talking about a 16-bit design, let's say  
<b class="name">Glaucon:</b> like those home-made 8-bit projects  
<b class="name">Socrates:</b> sure  
<b class="name">Socrates:</b> you can get 8051s for cheap  
<b class="name">Socrates:</b> like, a few dollars  
<b class="name">Socrates:</b> the AVR device I linked is like $1.50 in quantity  
<b class="name">Socrates:</b> maybe $5/ea?  
<b class="name">Socrates:</b> but these devices will never be able to drive an Ethernet connection, so you will need to buy an Ethernet chip  
<b class="name">Socrates:</b> OR  
<b class="name">Socrates:</b> you could buy the silicon IP for the 8051/AVR and put it alongside the Ethernet silicon IP on a single slice  
<b class="name">Socrates:</b> and now we're at the ARM model  
<b class="name">Glaucon:</b> I see  
<b class="name">Glaucon:</b> but there's open source 8-bit designs, no?  
<b class="name">Socrates:</b> show me  
<b class="name">Glaucon:</b> I assumed  
<b class="name">Glaucon:</b> maybe I'm stupid  
<b class="name">Socrates:</b> I mean, they will exist, as hobby projects  
<b class="name">Socrates:</b> but nothing anyone would fabricate  
<b class="name">Glaucon:</b> why not?  
<b class="name">Socrates:</b> fabrication is expensive, and only declines with quantity, it has significant NRE costs to get the fab design to print  
<b class="name">Socrates:</b> so the only way you could make open source, cheap, designs is to sell a lot of them  
<b class="name">Socrates:</b> you're not going to do that unless you can compete with ARM  
<b class="name">Socrates:</b> this is exactly where RISC-V is  
<b class="name">Glaucon:</b> right  
<b class="name">Glaucon:</b> what about simpler designs for embedded systems?  
<b class="name">Socrates:</b> simpler designs for embedded are owned by AVR, PIC, and ARM Cortex based devices  
<b class="name">Glaucon:</b> neat  
<b class="name">Glaucon:</b> I did not know this  
<b class="name">Socrates:</b> there is an end-run around fabrication costs, btw  
<b class="name">Socrates:</b> so you could produce an 8 bit, FOSS hobby design and release it for free and people can get it into their products at low-cost  
<b class="name">Glaucon:</b> end-run?  
<b class="name">Socrates:</b> end-run = trick to get around a defensive line/problem  
<b class="name">Socrates:</b> instead of smashing through a line of defenders, run around around the end of them  
<b class="name">Glaucon:</b> well that's essentially been my idea  
<b class="name">Glaucon:</b> for a while  
<b class="name">Glaucon:</b> I've seen people make 8-bit CPUs at home  
<b class="name">Socrates:</b> the long and the short is that I could give you an 8-bit (or 16, or 32, or 64, or exotic design of my own creation) for nothing and at scale if you so chose  
<b class="name">Socrates:</b> so you can work around the costs of fabrication at unknown scale/volume  
<b class="name">Socrates:</b> and this is available for RISC-V today  
<b class="name">Socrates:</b> in fact, you could probably build a hobby grade RISC-V computer for &lt;$500  
<b class="name">Socrates:</b> and I know the tools for it are all available now  

FPGAs
-----

*<span class="name">Socrates</span> is quiet for a moment, and looks at <span class="name">Glaucon</span>, expecting to be asked how one might accomplish this feat, but the question is not forthcoming; his student has been struck dumb.*

<b class="name">Socrates:</b> come on  
<b class="name">Socrates:</b> take the bait  
<b class="name">Glaucon:</b> fine go on  
<b class="name">Socrates:</b> FPGAs  
<b class="name">Socrates:</b> but you trade cost and flexibility here for massive losses in openness  
<b class="name">Socrates:</b> all FPGA platforms require proprietary toolchains that only run on windows  
<b class="name">Socrates:</b> hardware is designed as software with can be synthesised to different formats of output  
<b class="name">Socrates:</b> one format is a pattern of silicon and metal layers for chips  
<b class="name">Socrates:</b> one pattern is for FPGAs  
<b class="name">Socrates:</b> you can use ARM IP cores on FPGAs  
<b class="name">Socrates:</b> (this is why its not as simple as selling silicon)  
<b class="name">Glaucon:</b> oh yes no I know  
<b class="name">Socrates:</b> ace  
<b class="name">Glaucon:</b> I'm very aware of FPGAs  
<b class="name">Socrates:</b> if you can stomach your silicon being closed source, but ultra-dumb and generic = secure  
<b class="name">Socrates:</b> you should probably look at getting an FPGA and putting RISC-V and some peripheral IP onto it  
<b class="name">Socrates:</b> I think OpenCores is still around?  
<b class="name">Glaucon:</b> https://uploads.kiwiirc.com/files/270d43cb0f4ff229b5d4a7a4dc27885f/image.png  # *This image link is dead.  Does anyone still have it?  ---Ed*  
<b class="name">Glaucon:</b> So you see that big blob on there?  
<b class="name">Glaucon:</b> One of the engineers for the project took the entire original mobo of the Atari 2600 and recreated it on an ASIC  
<b class="name">Glaucon:</b> which Atari then produced themselves and used on the Atari Flashback 2, they were sold in such high volume that they made it at profit without issue  
<b class="name">Socrates:</b> cool  
<b class="name">Socrates:</b> fwiw, he probably didn't make it as an ASIC up front  
<b class="name">Glaucon:</b> how do you mean  
<b class="name">Socrates:</b> he probably made it in an HDL which he demonstrated on an FPGA  
<b class="name">Socrates:</b> and then Atari produced it in quantity for the flashback  
<b class="name">Glaucon:</b> he may have  
<b class="name">Glaucon:</b> this was back in 2003  
<b class="name">Socrates:</b> spinning an ASIC costs tens of thousands  
<b class="name">Glaucon:</b> I know FPGAs weren't as common back then  
<b class="name">Socrates:</b> FPGAs were common back then  
<b class="name">Glaucon:</b> well that's fair  
<b class="name">Glaucon:</b> they also did this for the Commodore 64 plug and play console they did  
<b class="name">Glaucon:</b> I always wanted to do this but as an open source 8-bit PC  
<b class="name">Socrates:</b> ill trust you  
<b class="name">Socrates:</b> the more I think about this  
<b class="name">Socrates:</b> the more I think you should buy yourself a cracked FPGA model and get yourself to <https://opencores.org/>  
<b class="name">Socrates:</b> put RISC-V, some USB/display IP on it  
<b class="name">Socrates:</b> and you can get a decent computer where you control the entire thing down to the first layer of silicon  
<b class="name">Socrates:</b> the silicon is simulated in another bit of silicon, but FPGAs are not really able to fuck you over  
<b class="name">Socrates:</b> you'll never be able to fully trust the FPGA, but rest assured that if someone was targeting you at the FPGA level, they would be just as able to compromise the foundry if you ever tried to get your design put into real silicon  
<b class="name">Glaucon:</b> I wouldn't mind using an FPGA for developing  
<b class="name">Glaucon:</b> it's just that I want my main PC to be cancer free  
<b class="name">Glaucon:</b> but I'm a retard  
<b class="name">Socrates:</b> so yeah, get yourself an ICE[^ice] family FPGA and build your own CPU  
<b class="name">Socrates:</b> it'll be faster than anything you can build yourself in actual hardware  
<b class="name">Socrates:</b> and easier  
<b class="name">Socrates:</b> network: <https://opencores.org/projects/ethmac>  
<b class="name">Socrates:</b> RAM: <https://opencores.org/projects/ddr3_sdram>  
<b class="name">Socrates:</b> video: <https://opencores.org/projects/axi_vga_fb>  
<b class="name">Socrates:</b> CPU: <https://opencores.org/projects/risc5x>  
<b class="name">Socrates:</b> CPU: <https://opencores.org/projects/rv01_RISC-V_core>  
<b class="name">Socrates:</b> USB: <https://opencores.org/projects/usb_host_core>  
<b class="name">Socrates:</b> put these onto an FPGA and you basically have a working RISC-V computer  
<b class="name">Socrates:</b> put it onto an ASIC, and well done, you're an RISC-V device manufacturer  
<b class="name">Glaucon:</b> damn  
<b class="name">Glaucon:</b> I had looked at FPGAs to make 386 IBM PC clones  
<b class="name">Glaucon:</b> what FPGA do you recommend  
<b class="name">Glaucon:</b> I kinda wanna do this  
<b class="name">Socrates:</b> I mean, this will probably take 2--3 years of learning and a few thousand dollars  
<b class="name">Socrates:</b> but the cost is spread out  
<b class="name">Socrates:</b> its things like replacing a $300 FPGA board when you trash the first one  
<b class="name">Glaucon:</b> mmmmmmmmmmmmm  
<b class="name">Glaucon:</b> well my primary interest is in making an 8-bit PC  
<b class="name">Glaucon:</b> which would probably be a bit easier  
<b class="name">Glaucon:</b> or a PC based on this <https://en.wikipedia.org/wiki/Intel_MCS-48>  
<b class="name">Socrates:</b> well, same hardware covers it  
<b class="name">Socrates:</b> just you can get the cheaper variant of it  
<b class="name">Socrates:</b> there are various FPGAs that have been reversed well enough to be targeted by FOSS toolchains  
<b class="name">Socrates:</b> have a look at the butterfly  
<b class="name">Socrates:</b> <https://papilio.cc/>  
<b class="name">Socrates:</b> an AVR will take ½--⅓ of these devices  
<b class="name">Glaucon:</b> what's an AVR?  
<b class="name">Glaucon:</b> I still don't quite understand  
<b class="name">Socrates:</b> an AVR is a microcontroller  
<b class="name">Socrates:</b> same as a low-end ARM device  
<b class="name">Socrates:</b> so its a device with compute IP (AVR rather than ARM) and a bunch of on-board peripherals  
<b class="name">Socrates:</b> (for example, a serial port, timer modules, SPI/I2C, USB, etc)  
<b class="name">Socrates:</b> AVRs are the microcontrollers used by the Arduino family of development boards  
<b class="name">Socrates:</b> if you're new hardware, start here  
<b class="name">Glaucon:</b> can't I just make a weird FPGA PC with an Intel 4004?  
<b class="name">Socrates:</b> sure  
<b class="name">Socrates:</b> Arduinos are a much gentler introduction  
<b class="name">Glaucon:</b> gentle isn't my thing  

Doing it the hardest way
------------------------

<b class="name">Socrates:</b> you're like the guy who comes into #C and says "I want to make an operating system"  
<b class="name">Socrates:</b> sure, cool, but start with hello world in python  
<b class="name">Socrates:</b> build up to C  
<b class="name">Socrates:</b> then build up to the foundations of what you want to do  
<b class="name">Socrates:</b> then do it  
<b class="name">Socrates:</b> same way: start with Arduino, learn how electronics work, then start with FPGAs, blink a few LEDs, then try your first 3rd party IP, then start thinking about gluing them together  
<b class="name">Glaucon:</b> nah nah nah I'll be gucci  
<b class="name">Socrates:</b> OK  
<b class="name">Glaucon:</b> I'll figure it out from the bottom up  
<b class="name">Glaucon:</b> from electricity to circuitry to simple circuits to a simple Intel 4004 PC  
<b class="name">Socrates:</b> well, enjoy your paint by numbers CPU but you're going to spent twice as long and twice as much by just slamming yourself into the higher end of it rather than actually learning  
<b class="name">Socrates:</b> yes  
<b class="name">Socrates:</b> do this with Arduino  
<b class="name">Socrates:</b> it solves a lot of the hard stuff and allows you to focus on learning how it works  
<b class="name">Glaucon:</b> nah I'll just buy a breadboard we'll be gucci  
<b class="name">Socrates:</b> then you can ditch the Arduino software framework, write C directly, understand how co-silicon peripherals interact  
<b class="name">Socrates:</b> etc  
<b class="name">Socrates:</b> OK  
<b class="name">Socrates:</b> well  
<b class="name">Socrates:</b> enjoy your timing errors, transparent latches eating 30% of your gate count, and parasitic capacitance meaning you can never find a compromise between stable clock and voltage  
<b class="name">Glaucon:</b> I will  
<b class="name">Glaucon:</b> thank you very much  
<b class="name">Glaucon:</b> Can't I just be like Woz?  
<b class="name">Glaucon:</b> Why must you shit on my dreams  

Epilogue
--------

*<span class="name">Polemarchus</span> the Spartan, having wandered in late, realises the extent of the discussion he has missed.*

<b class="name">Polemarchus:</b> hey could you maybe talk about CPU architectures for two and a half hours? oh you already did?  
<b class="name">Glaucon:</b> yeah sorry we can do it again if you'd like  
<b class="name">Socrates:</b> fuck, people talking tech in [#sqt](/irc.html)  
<b class="name">Socrates:</b> close the damn doors  

[^rpi]: An 8GB variant of the Raspberry Pi 4 had recently been released: <https://www.raspberrypi.org/blog/8gb-raspberry-pi-4-on-sale-now-at-75/>
[^rtl]: Register Transfer Level: <https://en.wikipedia.org/wiki/Register-transfer_level>
[^ice]: The Lattice iCE line of FPGAs was one of the only FPGA families to have had its bitstream protocol reverse engineered. This enabled a fully free and open-source toolchain to be produced, unlike any other in the notoriously proprietary space. <https://en.wikipedia.org/wiki/ICE_(FPGA)#Open_source>
