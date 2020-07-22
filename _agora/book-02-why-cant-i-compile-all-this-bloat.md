---
title: Book II—Why Can’t I Compile All This Bloat?
description: The newcomer returns to the agora in hopes of instruction on how to compile software, something with which many of the regulars are familiar—except that he wants to do it on a 16-bit operating system.
layout: default
---

Introduction
------------

Undeterred by the [harsh realities of open hardware](book-01-the-tragedy-of-open-hardware.html), Glaucon returns to the agora, this time hoping for assistance with compiling an operating system for a 16-bit computer.  Socrates again steps up to assist, ignoring the heckling of Thrasymachus and Adeimantus.  They are joined by Diogenes, a plain-speaking and direct Corinthian.  Cephalus, a Cretin knowledgeable on older hardware and esoteric operating systems, attempts to give Glaucon a few other possible leads in his pursuit of computing perfection.  It becomes somewhat clearer that Glaucon has bitten off rather more than he can chew.

Dramatis personae
-----------------

In order of appearance:

* <span class="name">Glaucon</span>, a Cretin visitor to the agora, with grand ideals of freedom and minimalism in computing
* <span class="name">Socrates</span>, famed philosopher-engineer of Athens  
* <span class="name">Diogenes</span>, a confrontational and iconoclastic Corinthian
* <span class="name">Thrasymachus</span>, an Ithacan, baffled by Glaucon's goals
* <span class="name">Adeimantus</span>, a Cretin,  impatient with Glaucon's idealism
* <span class="name">Cephalus</span>, a Cretin, knowledgeable on older hardware and operating systems, and more sympathetic to Glaucon's aims

Prelude
-------

<b class="name">Glaucon:</b> so, uh  
<b class="name">Glaucon:</b> I still don't understand how compilation works  
<b class="name">Glaucon:</b> if I have a simple program, with the only requirements being---let's say---just the C compiler and `make`, as long as my system has some form of `make` and---let's say---`tcc`, it'll compile correctly?  
<b class="name">Socrates:</b> is this a practical or a theoretical question?  
<b class="name">Glaucon:</b> practical---I've never compiled anything successfully before  
<b class="name">Glaucon:</b> I never figured out how it worked  
<b class="name">Socrates:</b> it should be said that neither of those are requirements of the program, they're requirements to compile the program  
<b class="name">Socrates:</b> which is subtly different  
<b class="name">Glaucon:</b> right right  
<b class="name">Glaucon:</b> because once compiled the program should just run on its own, right?  
<b class="name">Socrates:</b> if the compiled program has no runtime dependencies, sure  
<b class="name">Glaucon:</b> &gt;runtime dependencies  
<b class="name">Glaucon:</b> bloat  

If you come at the King...
--------------------------

<b class="name">Socrates:</b> so we'll stick to C here  
<b class="name">Socrates:</b> but the concept is fairly general  
<b class="name">Socrates:</b> a compiler takes Translation Units (usually a file) and parses the code, and then turns that into an object file  
<b class="name">Socrates:</b> so if you have a program with two files: `frontend.c` (which has `main()`, etc, to read input) and `compute.c` (which does some kind of stuff with them), then you will use the compiler twice, to generate `frontend.o` and `compute.o`  
<b class="name">Diogenes:</b> &gt;not calling it Compilation Units  
<b class="name">Diogenes:</b> very disappointed  
<b class="name">Socrates:</b> Diogenes: that's because compilation unit wouldn't be correct in the context of the C standard  
<b class="name">Socrates:</b> <https://stackoverflow.com/questions/1106149/what-is-a-translation-unit-in-c>  
<b class="name">Diogenes:</b> change the standard  
<b class="name">Thrasymachus:</b> <https://nitter.net/dril/status/134787490526658561>  

Compiling new software on old hardware
--------------------------------------

<b class="name">Socrates:</b> so these files are essentially at this point just binary versions of the source files: each function gets a tag for its name, etc, and then a body of machine code, but that's all  
<b class="name">Glaucon:</b> I'm lost  
<b class="name">Glaucon:</b> genuinely I didn't get that  
<b class="name">Glaucon:</b> this is far beyond me  
<b class="name">Socrates:</b> OK  
<b class="name">Socrates:</b> you're familiar with the concept of machine code, yeah?  
<b class="name">Glaucon:</b> lemme simplify my question, because it's a practical one  
<b class="name">Socrates:</b> OK, lets take the practical one  
<b class="name">Glaucon:</b> <https://en.wikipedia.org/wiki/Embeddable_Linux_Kernel_Subset>  
<b class="name">Glaucon:</b> let's say I install this on my PC, it's IA-16 Linux, basically  
<b class="name">Socrates:</b> OK  
<b class="name">Glaucon:</b> as long as it has make and a C compiler, I should be able to compile basic suckless tools/programs, right?  
<b class="name">Glaucon:</b> <https://tools.suckless.org/sic/> like this?  
<b class="name">Socrates:</b> so you're happily running that and are in a Linux environment of some kind?  
<b class="name">Glaucon:</b> Uh, I haven't installed it, if that's what you're asking  
<b class="name">Glaucon:</b> But I'm considering it, if I can compile basic programs like this without much issue  
<b class="name">Socrates:</b> OK, I'll give you this answer really simply, but I don't think it will help you  
<b class="name">Socrates:</b> if you have some C source code that has no build or runtime dependencies, then yes, all you need is a toolchain (compiler+friends), and any build automation tools (like `make`)  
<b class="name">Glaucon:</b> so since most suckless tools are written in straight C, I should be able to compile them without much issue?  
<b class="name">Socrates:</b> "yes"  
<b class="name">Thrasymachus:</b> Haha  
<b class="name">Glaucon:</b> it will be a big issue, I understand, Thrasymachus  
<b class="name">Glaucon:</b> and it won't be that simple  
<b class="name">Glaucon:</b> but in theory, it might work  
<b class="name">Thrasymachus:</b> I'm not making fun of you; I still don't fully understand why you insist on making things so hard for yourself---it's perverse and weird---but I'm laughing with recognition at Socrates's double-quoting "what should be" as opposed to "what is"  

Practical and portable C
------------------------

<b class="name">Socrates:</b> if you're in a reduced version of Linux  
<b class="name">Socrates:</b> and running in 16 bit mode  
<b class="name">Socrates:</b> the suckless source will need to be appropriately portable to this environment  
<b class="name">Socrates:</b> the jump is presumably much smaller than, say, Linux to Windows  
<b class="name">Socrates:</b> but presumably larger than between Debian and Ubuntu  
<b class="name">Glaucon:</b> I was fine in DOS, I just needed multitasking, and applying a multitasking environment over it seemed like a sillier solution than just finding a reduced Linux like this one  
<b class="name">Glaucon:</b> for reference, I don't plan on compiling any software that won't work in the command line  
<b class="name">Glaucon:</b> maybe at most a browser and video player that needs the framebuffer  
<b class="name">Socrates:</b> it's not the front end I'm worried about  
<b class="name">Socrates:</b> it's if suckless source code makes any assumptions that expect to be on a 32 bit system  
<b class="name">Socrates:</b> i.e., any modern system  
<b class="name">Glaucon:</b> that was the question  
<b class="name">Socrates:</b> suckless is quite aggressive at targeting the minimal, common case  
<b class="name">Glaucon:</b> but they still usually presume a 386  
<b class="name">Glaucon:</b> from what I can tell  
<b class="name">Socrates:</b> that is to say, it's quite possible they will not support running in legacy 16 bit environments  
<b class="name">Glaucon:</b> yeah  
<b class="name">Socrates:</b> remember that running isn't the same as working  
<b class="name">Glaucon:</b> There is good news, though: I got a lot of modern programs working just fine in DOS without EMM  
<b class="name">Glaucon:</b> such as links, and an audio player  
<b class="name">Socrates:</b> if they exist, make sure to run the tests  
<b class="name">Glaucon:</b> if what exists?  
<b class="name">Socrates:</b> tests  
<b class="name">Socrates:</b> consider how much of a hassle it has been to upgrade Linux to go from 32-bit `time_t`s to 64-bit `time_t`s  
<b class="name">Socrates:</b> and now you want to change things as fundamental as the width of a pointer  
<b class="name">Socrates:</b> just remember that there are things that will run, but not always work. unless you have made a deliberate effort to port and audit, it's possible for stuff to fuck up in quiet, insidious ways  
<b class="name">Glaucon:</b> My guess is  
<b class="name">Glaucon:</b> tools like ii, sic, lynx/links, mutt, this won't be a problem  
<b class="name">Glaucon:</b> and then anything beyond that will probably not work  
<b class="name">Thrasymachus:</b> You don't know how to compile a program and you think you can guess what will and won't work on a 16-bit computer?  
<b class="name">Glaucon:</b> well yes  
<b class="name">Glaucon:</b> because those are tools that have been ported to DOS  
<b class="name">Glaucon:</b> and run without memory management  
<b class="name">Glaucon:</b> all of them except ii and sic, and sic is only 5kb filesize so  
<b class="name">Socrates:</b> OK  
<b class="name">Socrates:</b> best of luck, Godspeed, and be sure to document and report back  
<b class="name">Socrates:</b> for a moment, when you linked ELKS, I was expecting you to say "I need to build this in FreeDOS to embed Linux programs"  
<b class="name">Socrates:</b> and I was going to say "no"  
<b class="name">Socrates:</b> have you considered something sane like plan 9?  
<b class="name">Socrates:</b> (there's a cursed phrase)  
<b class="name">Glaucon:</b> I have, but plan 9 has more graphical focus than I want/need  
<b class="name">Socrates:</b> wild concept right there  
<b class="name">Socrates:</b> I'm not sure I agree but OK  
<b class="name">Socrates:</b> if you mean "it uses a mouse", yes, it's quite mouse reliant  
<b class="name">Socrates:</b> but almost everything is text  
<b class="name">Socrates:</b> I can recommend 9front if you want to play, it will run happily in QEMU but I get the feeling you're never going to run a system bloated enough to include other systems  
<b class="name">Glaucon:</b> I don't like using a mouse  
<b class="name">Glaucon:</b> Remember I've been using all CLI tools plus like, Links for web browsing  
<b class="name">Glaucon:</b> so I actually unplugged my mouse while using FreeDOS yesterday just so I didn't even need the mouse driver running in the background  
<b class="name">Glaucon:</b> there's simply no reason for me to use a mouse, the only graphical thing I use is a web browser and I can browse with links/surf/whatever just fine with keyboard commands  
<b class="name">Thrasymachus:</b> You are very strange  
<b class="name">Glaucon:</b> I'm really not  

The road less travelled by, for a reason
----------------------------------------

<b class="name">Cephalus:</b> what web browser are you on right now  
<b class="name">Glaucon:</b> Chrome on a Windows 10 laptop  
<b class="name">Glaucon:</b> lmao  
<b class="name">Glaucon:</b> because MINIX wiped my FreeDOS install but couldn't finish installing itself  
<b class="name">Adeimantus:</b> no, you wiped your FreeDOS install  
<b class="name">Adeimantus:</b> don't blame poor ol' MINIX  
<b class="name">Glaucon:</b> I do blame MINIX  
<b class="name">Cephalus:</b> tbh MINIX is a bit rough around the edges  
<b class="name">Cephalus:</b> best to assume it'll do bad things  
<b class="name">Adeimantus:</b> it just did what you told it to  
<b class="name">Glaucon:</b> I can hardly even login with the live CD, it crashes 50% of the time while booting  
<b class="name">Glaucon:</b> shit's broken, tbh  
<b class="name">Thrasymachus:</b> I just... I just don't get it  
<b class="name">Thrasymachus:</b> You do the strangest, most difficult thing at every possible turn and then are baffled when it doesn't work  
<b class="name">Adeimantus:</b> glaucon.txt  
<b class="name">Glaucon:</b> I'm not baffled that MINIX doesn't work, who said I was baffled  
<b class="name">Glaucon:</b> it's MINIX, of course it's broken  
<b class="name">Socrates:</b> MINIX runs on more systems than windows, you cheeky cunt  
<b class="name">Adeimantus:</b> if you knew it was broken, why did you install it to begin with?  
<b class="name">Glaucon:</b> because I expected to at least be able to install it and compile basic programs, but alas  
<b class="name">Glaucon:</b> I'm surprised however that NetBSD kernel panicked on every live CD boot  
<b class="name">Glaucon:</b> the default boot is without  
<b class="name">Thrasymachus:</b> The sooner Glaucon realises he needs to install Ubuntu and learn how to `echo` and `cd`, the happier he will be  
<b class="name">Adeimantus:</b> ^  
<b class="name">Thrasymachus:</b> But it looks like it's going to take a long time  
<b class="name">Glaucon:</b> &gt;install Ubuntu  
<b class="name">Glaucon:</b> I don't understand why I wouldn't just use BSD or Void like an adult  
<b class="name">Adeimantus:</b> because you're *not* an adult  
<b class="name">Adeimantus:</b> &gt;`apt install build-essential`  
<b class="name">Adeimantus:</b> "look ma I can compile shit"  
<b class="name">Glaucon:</b> Although, since NetBSD is borked, and I can't install MINIX  
<b class="name">Glaucon:</b> I'm a bit limited on BSD options  
<b class="name">Glaucon:</b> I have a Dell Dimension 4600, as far as I know everything is stock but the RAM is upgraded to 1.5GB  
<b class="name">Thrasymachus:</b> Glaucon won't be happy until he's mask-off doomer blackpilled, full joker mode minimal MINIX user  
<b class="name">Glaucon:</b> MINIX is bloat tho  
<b class="name">Thrasymachus:</b> Ah yes, how foolish of me  
<b class="name">Adeimantus:</b> and yet you insist on installing it  
<b class="name">Adeimantus:</b> and defining runtime libraries as bloat despite not knowing what a compiler is or does  
<b class="name">Glaucon:</b> because it's easier than moving straight down to ELKS  
<b class="name">Glaucon:</b> sillybilly  
<b class="name">Thrasymachus:</b> When have you ever---*ever*---wanted to do something easy?  
<b class="name">Glaucon:</b> Thrasymachus never  
<b class="name">Glaucon:</b> I have however, wanted to do things that are easier for the time being  
<b class="name">Glaucon:</b> if you can get a full desktop on a Amstrad CPC then it shouldn't be so hard to get one on an IBM XT  
<b class="name">Glaucon:</b> I think a more reasonable option right now would be Linux From Scratch  
<b class="name">Glaucon:</b> and then move from LFS to ELKS  
<b class="name">Glaucon:</b> because I can't get MINIX or NetBSD working  
<b class="name">Thrasymachus:</b> It just doesn't stop  
<b class="name">Socrates:</b> install Gentoo  

Glaucon and the Temple of God
-----------------------------

<b class="name">Socrates:</b> this is what Glaucon is worried will happen if he uses technology: <https://invidio.us/watch?v=6y0QKiTQPkY>  
<b class="name">Socrates:</b> (btw the lightning doesn't happen with TempleOS)  
<b class="name">Socrates:</b> which actually is a really good idea  
<b class="name">Socrates:</b> Glaucon: have you tried TempleOS yet?  
<b class="name">Thrasymachus:</b> Oh god, don't  
<b class="name">Thrasymachus:</b> *Don't!*  
<b class="name">Glaucon:</b> lmao  
<b class="name">Glaucon:</b> If it had software, I would  
<b class="name">Glaucon:</b> I essentially want a Unix equivalent of TempleOS  
<b class="name">Adeimantus:</b> it's minimal as fuck  
<b class="name">Adeimantus:</b> it can't do shit  
<b class="name">Adeimantus:</b> and it runs on a type of C  
<b class="name">Adeimantus:</b> right up your alley  
<b class="name">Glaucon:</b> HolyC  
<b class="name">Glaucon:</b> I'm more than aware  
<b class="name">Thrasymachus:</b> "I want a Unix equivalent of TempleOS.  That's why I'm compiling some weird subset of the Linux kernel on FreeDOS"  
<b class="name">Socrates:</b> I'm always pleased when I hear HolyC  
<b class="name">Socrates:</b> what an amazing pun  
<b class="name">Socrates:</b> miss you terry  
<b class="name">Adeimantus:</b> tfw  
<b class="name">Socrates:</b> hope you're fucking up those glowinnadarks in heaven  
<b class="name">Socrates:</b> (don't confuse them with the angels bro)  
<b class="name">Thrasymachus:</b> Press "N" to pay respects  
<b class="name">Socrates:</b> N  
<b class="name">Thrasymachus:</b> I  
<b class="name">Socrates:</b> C  
<b class="name">Socrates:</b> E... work terry  
<b class="name">Thrasymachus:</b> fun ruiner  

Keep it simple and/or difficult
-------------------------------

<b class="name">Cephalus:</b> what's that nutter's distro, the one who was forced quit void Linux  
<b class="name">Cephalus:</b> K1ss Linux I think  
<b class="name">Cephalus:</b> pure autism and retard tier  
<b class="name">Cephalus:</b> <https://k1ss.org/>  
<b class="name">Cephalus:</b> you might find it interesting  
<b class="name">Cephalus:</b> btw I only say that because on principle it's a bit batshit insane to consider it for most production use  
<b class="name">Glaucon:</b> Kiss Linux looks interesting  
<b class="name">Glaucon:</b> I've seen it before  
<b class="name">Glaucon:</b> but I automatically discount any OS that only runs 64-bit  
<b class="name">Cephalus:</b> do you use IA32?  
<b class="name">Socrates:</b> ironically  
<b class="name">Socrates:</b> 64 bit is simpler than 16/32  
<b class="name">Glaucon:</b> that's why I'm only going to use IA-16  
<b class="name">Adeimantus:</b> can't have it actually using his hardware. hardware usage is bloat.  
<b class="name">Glaucon:</b> yeah I know it's way too powerful  
<b class="name">Glaucon:</b> I'm gonna have to find a weaker PC, or use the ao486 core on the MiSTer  
<b class="name">Glaucon:</b> <https://github.com/sergev/LiteBSD>  
<b class="name">Socrates:</b> &gt;runs only on PIC32  
<b class="name">Socrates:</b> damn  
<b class="name">Socrates:</b> do it  
<b class="name">Socrates:</b> that'd be sick as fuck  
<b class="name">Glaucon:</b> I'm gonna buy one  
<b class="name">Glaucon:</b> I think  
<b class="name">Socrates:</b> be sure to research the toolchain beforehand  
<b class="name">Glaucon:</b> the what  
<b class="name">Socrates:</b> the toolchain  
<b class="name">Socrates:</b> the compilers have unusual licensing  
<b class="name">Socrates:</b> (common in the embedded world)  
<b class="name">Glaucon:</b> uh  
<b class="name">Glaucon:</b> sure  
<b class="name">Socrates:</b> how do you get code onto a PIC  
<b class="name">Glaucon:</b> the toolchain of course  
<b class="name">Glaucon:</b> I think  
<b class="name">Glaucon:</b> do I win?  

The truth gets vicious when you corner it
-----------------------------------------

<b class="name">Socrates:</b> so, remember the other day I linked [an architecture diagram for an AVR device?](/assets/img/agora/block-diagram-avr-chip.png) [^avr]  
<b class="name">Glaucon:</b> yes  
<b class="name">Socrates:</b> and it had things like flash ROM and static SRAM *inside* the system boundary?  
<b class="name">Glaucon:</b> I don't remember that but I'll take your word  
<b class="name">Socrates:</b> PICs are microcontrollers and entirely unlike common desktop devices  
<b class="name">Socrates:</b> they store their software on-chip  
<b class="name">Socrates:</b> and have non-standard ISAs  
<b class="name">Socrates:</b> if you don't know what a compiler is, you do not want to be using a microcontroller  
<b class="name">Glaucon:</b> There's no way to have it boot from a device?  
<b class="name">Socrates:</b> only if you write and program an appropriate BIOS+bootloader  
<b class="name">Socrates:</b> write and program being specific, and program does not mean what you think it means  
<b class="name">Glaucon:</b> Sounds like exactly what I need  
<b class="name">Glaucon:</b> lemme find one to buy  
<b class="name">Socrates:</b> OK, well, like I said, I recommend Arduino if you want to go down this path  
<b class="name">Socrates:</b> understand that you'll be using C, but not in an environment like anything you've programmed before  
<b class="name">Glaucon:</b> &gt;he thinks I've programmed before  
<b class="name">Glaucon:</b> haha  
<b class="name">Socrates:</b> OK, let me put it this way. you will need to learn a custom variant of C, use a custom compiler, assembler, linker, hardware programming tools, and learn electronics enough (way past the "build your own Z80 stuff")  
<b class="name">Glaucon:</b> Okay, now  
<b class="name">Glaucon:</b> I'm a little scared  
<b class="name">Glaucon:</b> Let's start with LFS  
<b class="name">Socrates:</b> you will probably never talk to an actual hard drive without also learning how to design and fabricate/order PCBs for high-speed digital signals  
<b class="name">Socrates:</b> high-speed digital design being a masters in itself and is the primary reason why computers are slow these days  
<b class="name">Socrates:</b> (mainly, it's too hard to get a fast link between RAM and CPU because at these speeds, every bit of wire is an antenna and they all bleed signals into each other)  
<b class="name">Socrates:</b> it's the same reason we went from slow serial links, to faster parallel links, back to serial links  
<b class="name">Socrates:</b> serial links are easy to design but rely on better terminal electronics  
<b class="name">Socrates:</b> parallel links are fucking nails  
<b class="name">Glaucon:</b> well it's a good thing I'm using a 5kb IRC client then  
<b class="name">Socrates:</b> that's 10% of your entire ram  
<b class="name">Glaucon:</b> good thing I only need to do a few tasks at once  
<b class="name">Socrates:</b> good, because you're probably not getting interactive multitasking  
<b class="name">Glaucon:</b> I was using DOS just fine, I just wanted to have maybe 2-3 programs open at a time  
<b class="name">Socrates:</b> oh  
<b class="name">Socrates:</b> well  
<b class="name">Socrates:</b> good luck  
<b class="name">Socrates:</b> generally, this is for embedded systems, not user-facing  
<b class="name">Glaucon:</b> yes of course  
<b class="name">Glaucon:</b> I don't think I'll buy a microcontroller I'm not that crazy  
<b class="name">Glaucon:</b> maybe I should just use multitasking DOS  
<b class="name">Glaucon:</b> or Xenix  
<b class="name">Glaucon:</b> I'm gonna try installing LFS  
<b class="name">Socrates:</b> I hope I get to tell you about compilers some time  
<b class="name">Socrates:</b> because I like you more now it's clear you're just a silly kid rather than the least subtle troll  

Drawing a line in the silicon
-----------------------------

<b class="name">Glaucon:</b> wait  
<b class="name">Glaucon:</b> you really thought I installed FreeDOS on real hardware to test it as a desktop just to troll you guys?  
<b class="name">Glaucon:</b> I mean, quite honestly, don't give yourselves so much credit  
<b class="name">Socrates:</b> I mean, I would say "surely no one is that stupid"  
<b class="name">Socrates:</b> but here you are  
<b class="name">Glaucon:</b> KEK  
<b class="name">Glaucon:</b> I didn't come in here trying to hoping to use a MSX as a desktop and expect everyone to smile and nod at me  
<b class="name">Glaucon:</b> I'm not 15  
<b class="name">Glaucon:</b> you guys respond better than a lot of minimalists themselves do  
<b class="name">Glaucon:</b> because they each have their own point that they're comfortable with, and the second you go beyond that they start to get pissy  
<b class="name">Glaucon:</b> say to someone who's using 9front that it's bloated, and they get red in the face  
<b class="name">Glaucon:</b> because it's a threat to their entire identity  
<b class="name">Adeimantus:</b> or because you have yet to define what "bloat" actually means  
<b class="name">Glaucon:</b> bloat means just about everything when it comes to cat-v  
<b class="name">Glaucon:</b> they openly admit that there's no real OS anymore that completely adheres to the UNIX philosophy, maybe Plan 9 and OpenBSD  
<b class="name">Glaucon:</b> that's about it  
<b class="name">Glaucon:</b> and most people don't use either  
<b class="name">Adeimantus:</b> if it means everything, it means nothing  
<b class="name">Adeimantus:</b> did that ever occur to you?  
<b class="name">Glaucon:</b> no Adeimantus lmao  
<b class="name">Glaucon:</b> because relativity exists  
<b class="name">Thrasymachus:</b> You'd make a fantastic case study for cat-v brain damage  
<b class="name">Thrasymachus:</b> I'm somehow confident that eventually you'll come right, but for the moment you're hopelessly confused  
<b class="name">Glaucon:</b> I can say Windows is bloated compared to Void  
<b class="name">Glaucon:</b> and that's objectively true  
<b class="name">Adeimantus:</b> why?  
<b class="name">Glaucon:</b> because the average user can do what they need to do with less, both sysops and desktop users  
<b class="name">Adeimantus:</b> if that's your base, I think you're conflating "can" with "should"  
<b class="name">Adeimantus:</b> something is not bloat purely because there's a more obscure or tinier way to do something  
<b class="name">Adeimantus:</b> part of the Unix philosophy includes choice of tooling by virtue of their modular nature. If there was only one good way to do something, alternative tools would not exist or be needed. If they add something legitimately useful, they're not bloat. bloat comes from adding useless things that go beyond the purpose or focus of the tool  
<b class="name">Glaucon:</b> bro if you need bloat to work that's fine I just don't  
<b class="name">Glaucon:</b> das all  
<b class="name">Adeimantus:</b> much like casions and dojos, this "bloat" is all in your mind  
<b class="name">Diogenes:</b> but alpine is "too minimal"  
<b class="name">Diogenes:</b> 🤔  
<b class="name">Glaucon:</b> it's not too minimal at all  
<b class="name">Glaucon:</b> it's just not what I'd call finished lmao  
<b class="name">Diogenes:</b> OK, so everything that goes beyond "finished" is bloat?  
<b class="name">Diogenes:</b> like security, or performance?  
<b class="name">Glaucon:</b> no I'd say it's not even finished  
<b class="name">Glaucon:</b> like I said, couldn't even get audio working, basic security issues  
<b class="name">Diogenes:</b> then what is "finished"  
<b class="name">Diogenes:</b> is there any software that is finished?  
<b class="name">Glaucon:</b> Finished is OpenBSD lmao  
<b class="name">Glaucon:</b> or FreeBSD  
<b class="name">Glaucon:</b> or FreeDOS  
<b class="name">Glaucon:</b> is a great example  
<b class="name">Glaucon:</b> most DOS variants, even  
<b class="name">Glaucon:</b> we can add to it, sure, but it's still completely functional on a boot floppy  
<b class="name">Diogenes:</b> so those things don't need any improvements?  
<b class="name">Glaucon:</b> yeah DOS especially  
<b class="name">Glaucon:</b> Jim Hall has said this, he considered making it 32-bit, implementing a networking stack, etc.  
<b class="name">Diogenes:</b> so new things are, per definition, bloat?  
<b class="name">Diogenes:</b> like Unicode?  
<b class="name">Glaucon:</b> yes  
<b class="name">Diogenes:</b> interesting  
<b class="name">Diogenes:</b> so you're basically Amish with a different year in which you stop advancements  
<b class="name">Diogenes:</b> a different time at which you think "this is the way it was all meant to be, time to stop"  
<b class="name">Glaucon:</b> I was visiting the Amish a few weeks ago  
<b class="name">Glaucon:</b> was nice  
<b class="name">Diogenes:</b> wonder what constitutes this perfect moment in technological development specifically  
<b class="name">Diogenes:</b> was it when the shell was invented?  
<b class="name">Diogenes:</b> was it when ASCII was standardized?  
<b class="name">Diogenes:</b> was it when floppies were invented?  
<b class="name">Glaucon:</b> I've considered this  
<b class="name">Glaucon:</b> I draw the line at about the PDP-11  

Not done yet
------------

<b class="name">Cephalus:</b> Diogenes: how do I learn2ansible  
<b class="name">Diogenes:</b> Cephalus: pain and suffering  
<b class="name">Cephalus:</b> Diogenes: please give it to me, Daddy Ansible  
<b class="name">Thrasymachus:</b> Can you two wait a few minutes while they finish ripping Glaucon's soul in half, please  

Learn Python, dammit
--------------------

<b class="name">Socrates:</b> Glaucon: being able to boot small systems isn't the same as understanding them, or how to use them  
<b class="name">Socrates:</b> which is really the crux of why this is so painful  
<b class="name">Glaucon:</b> of course, but I have learned a lot  
<b class="name">Socrates:</b> yes, the slow and hard way  
<b class="name">Glaucon:</b> &gt;the slow and hard way  
<b class="name">Glaucon:</b> it's been a few days lmao  
<b class="name">Socrates:</b> yes, and it's going to take, many, many, many more  
<b class="name">Glaucon:</b> it's a lot faster than I ever learned before  
<b class="name">Adeimantus:</b> and in that time, what have you actually done?  
<b class="name">Adeimantus:</b> aside from fuck up hard enough to blow away your old install  
<b class="name">Glaucon:</b> Adeimantus I mean I can reinstall FreeDOS and reconfigure it in an hour  
<b class="name">Adeimantus:</b> configuring an OS older than you are isn't terribly hard  
<b class="name">Glaucon:</b> reinstall it, install links and the packet driver and the music player, install DOS/32A  
<b class="name">Glaucon:</b> add the packet driver to autoexec, and that's it  
<b class="name">Socrates:</b> make no mistake, no one here thinks you're not learning, but if you start with adding, then multiplication, then algebra, you're going to reach calculus faster than if you start with complex differential equations on day one and smash yourself into it for 3 years  
<b class="name">Glaucon:</b> I am starting with adding, then multiplication, then algebra though  
<b class="name">Glaucon:</b> I'm starting from the bottom up  
<b class="name">Socrates:</b> no, you're not  
<b class="name">Glaucon:</b> should I go lower?  
<b class="name">Socrates:</b> the idea of this being bottom up learning isn't true  
<b class="name">Glaucon:</b> Then I should go lower, no?  
<b class="name">Diogenes:</b> lower in this case would be harder  
<b class="name">Diogenes:</b> so no  
<b class="name">Glaucon:</b> I can brush up on circuitry  
<b class="name">Socrates:</b> learning computing from first principles is what has taken many PhDs 50 years  
<b class="name">Socrates:</b> start from the abstractions  
<b class="name">Socrates:</b> dig into them as you become comfy with each  
<b class="name">Glaucon:</b> I wonder what that means long term  
<b class="name">Socrates:</b> there's a reason why we teach python rather than C in schools  
<b class="name">Socrates:</b> some might say it's right, some might say it's wrong  
<b class="name">Socrates:</b> but teaching the concepts without the sharp edges is sensible  
<b class="name">Glaucon:</b> &gt;paying to learn python  
<b class="name">Glaucon:</b> do you think I should pay to learn python?  
<b class="name">Socrates:</b> unironically yes, you should learn at least some high level language first  
<b class="name">Socrates:</b> then C  
<b class="name">Socrates:</b> and then how C applies to operating systems  
<b class="name">Socrates:</b> just choose something high level and learn to program  
<b class="name">Socrates:</b> then learn how to program in C  
<b class="name">Socrates:</b> programming languages and programming-the-skill are orthogonal  
<b class="name">Socrates:</b> learn programming-the-skill in a high level language so you can focus on getting that to a high standard before you slow yourself down by having to multitask with the sharp edges that C makes you wade through  
<b class="name">Cephalus:</b> tbh python does get your dick caught in the ceiling fan occasionally, but it's better than most languages  
<b class="name">Adeimantus:</b> why does that metaphor keep coming up  

Epilogue
--------

<b class="name">Socrates:</b> what's a linker  
<b class="name">Adeimantus:</b> not doing much C, as I recall, a linker is used in compilation to combine object files into other files  
<b class="name">Socrates:</b> thanks for that  
<b class="name">Adeimantus:</b> did I miss something here?  
<b class="name">Socrates:</b> I was teaching him about translation units from the C standard earlier, I was joking that he doesn't know what a linker is with respect to "defines as bloat when you don't know what a compiler is"  
<b class="name">Thrasymachus:</b> I think Adeimantus thought you were testing him :)  

[^avr]: From our previous discussion, where we consider [the practical openness of x86](book-01-the-tragedy-of-open-hardware.html#the-practical-openness-of-x86)
