---
title: Agora—Book II—Why Can’t I Compile All This Bloat?
layout: default
---

Introduction
------------

Unfazed by the harsh realities of open source hardware, Glaucon returns to the agora, hoping for assistance with compiling an operating system for a 16-bit computer.  Socrates again steps up to assist, ignoring the heckling of Thrasymachus and Adeimantus.  They are soon joined by the plain-speaking and direct Corinthian Diogenes.  Cephalus, a Cretin also knowledgeable on older hardware and esoteric operating systems, attempts to give Glaucon a few other possible leads in his pursuit of computing perfection.  It becomes somewhat clearer that Glaucon has bitten off rather more than he can chew.

Dramatis personae
-----------------

In order of appearance:

* **Glaucon:** A Cretin visitor to the agora, with grand ideals of freedom and minimalism in computing
* **Socrates:** Famed philosopher-engineer of Athens  
* **Diogenes:** A confrontational and iconoclastic Corinthian
* **Thrasymachus:** An Ithacan, baffled by Glaucon's goals
* **Adeimantus:** Another Cretin, a regular visitor, impatient with Glaucon's idealism
* **Cephalus:** Another Cretin, knowledgeable on older hardware and operating systems, and more sympathetic to Glaucon's aims

Prelude
-------

**Glaucon:** so, uh  
**Glaucon:** I still don't understand how compilation works  
**Glaucon:** if I have a simple program, with the only requirements being, let's say, just the C compiler and `make`, as long as my system has some form of `make` and, let's say, `tcc`, it'll compile correctly?  
**Socrates:** is this a practical or a theoretical question?  
**Glaucon:** practical---I've never compiled anything successfully before  
**Glaucon:** I never figured out how it worked  
**Socrates:** it should be said that neither of those are requirements of the program, they're requirements to compile the program  
**Socrates:** which is subtly different  
**Glaucon:** right right  
**Glaucon:** because once compiled the program should just run on its own, right?  
**Socrates:** if the compiled program has no runtime dependencies, sure  
**Glaucon:** &gt;runtime dependencies  
**Glaucon:** bloat  

If you come at the King...
--------------------------

**Socrates:** so we'll stick to C here  
**Socrates:** but the concept is fairly general  
**Socrates:** a compiler takes Translation Units (usually a file) and parses the code, and then turns that into an object file  
**Socrates:** so if you have a program with two files: frontend.c (which has main(), etc, to read input) and compute.c (which does some kind of stuff with them), then you will use the compiler twice, to generate frontend.o and compute.o  
**Diogenes:** &gt;not calling it Compilation Units  
**Diogenes:** very disappointed  
**Socrates:** Diogenes: that's because compilation unit wouldn't be correct in the context of the C standard  
**Socrates:** <https://stackoverflow.com/questions/1106149/what-is-a-translation-unit-in-c>  
**Diogenes:** change the standard  
**Thrasymachus:** <https://nitter.net/dril/status/134787490526658561>  

Compiling new software on old hardware
--------------------------------------

**Socrates:** so these files are essentially at this point just binary versions of the source files: each function gets a tag for its name, etc, and then a body of machine code, but that's all  
**Glaucon:** I'm lost  
**Glaucon:** genuinely I didn't get that   
**Glaucon:** this is far beyond me  
**Socrates:** ok  
**Socrates:** you're familiar with the concept of machine code, yeah?  
**Glaucon:** lemme simplify my question, because it's a practical one  
**Socrates:** ok, lets take the practical one  
**Glaucon:** <https://en.wikipedia.org/wiki/Embeddable_Linux_Kernel_Subset>  
**Glaucon:** let's say I install this on my PC, it's IA-16 Linux, basically  
**Socrates:** ok  
**Glaucon:** as long as it has make and a C compiler, I should be able to compile basic suckless tools/programs right?  
**Glaucon:** <https://tools.suckless.org/sic/> like this?  
**Socrates:** so you're happily running that and are in a Linux environment of some kind?  
**Glaucon:** Uh, I haven't installed it, if that's what you're asking  
**Glaucon:** But I'm considering it  
**Glaucon:** if I can compile basic programs like this without much issue  
**Socrates:** ok, I'll give you it really simply but I don't think this answer will help you  
**Socrates:** if you have some C source code that has no build or runtime dependencies, then yes, all you need is a toolchain (compiler+friends), and any build automation tools (like `make`)  
**Glaucon:** so since most suckless tools are written in straight C, I should be able to compile them without much issue?  
**Socrates:** "yes"  
**Thrasymachus:** Haha  
**Glaucon:** it will be a big issue I understand Thrasymachus  
**Glaucon:** and it won't be that simple  
**Glaucon:** but in theory it might work  
**Thrasymachus:** I'm not making fun of you; I still don't fully understand why you insist on making things so hard for yourself---it's perverse and weird---but I'm laughing with recognition at Socrates's quoting of *What Should Be* as opposed to *What Is*  

Practical and portable C
------------------------

**Socrates:** if you're in a reduced version of Linux  
**Socrates:** and running in 16 bit mode  
**Socrates:** the suckless source will need to be appropriately portable to this environment  
**Socrates:** the jump is presumably much smaller than, say, Linux to windows  
**Socrates:** but presumably larger than between Debian and Ubuntu  
**Glaucon:** I was fine in DOS I just needed multitasking, and applying a multitasking environment over it seemed like a sillier solution than just finding a reduced Linux like this one  
**Glaucon:** for reference, I don't plan on compiling any software that won't work in the command line  
**Glaucon:** maybe at most a browser and video player that needs the framebuffer  
**Socrates:** its not the front end I'm worried about  
**Socrates:** its if suckless source code makes any assumptions that expect to be on a 32 bit system  
**Socrates:** i.e., any modern system  
**Glaucon:** that was the question  
**Socrates:** suckless is quite aggressive at targeting the minimal, common case  
**Socrates:** that is to say, its quite possible they will not support running in legacy 16 bit environments  
**Glaucon:** but they still usually presume a 386  
**Glaucon:** from what I can tell  
**Glaucon:** yeah  
**Socrates:** remember that running isn't the same as working  
**Glaucon:** There is good news though, I got a lot of modern programs working just fine in DOS without EMM  
**Glaucon:** such as links, and an audio player  
**Socrates:** if they exist, make sure to run the tests  
**Glaucon:** if what exists  
**Socrates:** tests  
**Socrates:** consider how much of a hassle it has been to upgrade Linux to go from 16-bit `time_ts` to 32-bit `time_ts`  
**Socrates:** and now you want to change things as fundamental as the width of a pointer  
**Socrates:** just remember that there are things that will run, but not always work. unless you have made a deliberate effort to port and audit, its possible for stuff to fuck up in quiet, insidious ways  
**Glaucon:** My guess is  
**Glaucon:** tools like ii, sic, lynx/links, mutt, this won't be a problem  
**Glaucon:** and then anything beyond that will probably not work  
**Thrasymachus:** You don't know how to compile a program and you think you can guess what will and won't work on a 16-bit computer?  
**Glaucon:** Thrasymachus well yes  
**Glaucon:** because those are tools that have been ported to DOS  
**Glaucon:** and run without memory management  
**Glaucon:** all of them except ii and sic, and sic is only 5kb filesize so  
**Socrates:** ok  
**Socrates:** best of luck, Godspeed, and be sure to document and report back  
**Socrates:** for a moment when you linked ELKS, I was expecting you to say "I need to build this in FreeDOS to embed Linux programs"  
**Socrates:** and I was going to say "no"  
**Socrates:** have you considered something sane like plan 9?  
**Socrates:** (there's a cursed phrase)  
**Glaucon:** I have but plan 9 has more graphical focus than I want/need  
**Socrates:** wild concept right there  
**Socrates:** I'm not sure I agree but ok  
**Socrates:** if you mean "it uses a mouse", yes, its quite mouse reliant  
**Socrates:** but almost everything is text  
**Glaucon:** I don't like using a mouse  
**Socrates:** I can recommend 9front if you want to play, it will run happily in QEMU but I get the feeling you're never going to run a system bloated enough to include other systems  
**Glaucon:** Remember I've been using all CLI tools plus like, Links for web browsing  
**Glaucon:** so I actually unplugged my mouse while using FreeDOS yesterday just so I didn't even need the mouse driver running in the background  
**Glaucon:** there's simply no reason for me to use a mouse, the only graphical thing I use is a web browser and I can browse with links/surf/whatever just fine with keyboard commands  
**Thrasymachus:** You are very strange  
**Glaucon:** I'm really not  

The road less travelled by, for a reason
----------------------------------------

**Cephalus:** what web browser are you on right now  
**Glaucon:** Chrome on a Windows 10 laptop  
**Glaucon:** lmao  
**Glaucon:** bc MINIX wiped my FreeDOS install but couldn't finish installing itself  
**Adeimantus:** no, you wiped your FreeDOS install  
**Adeimantus:** don't blame poor ol' MINIX  
**Glaucon:** I do blame MINIX  
**Cephalus:** tbh MINIX is a bit rough around the edges  
**Cephalus:** best to assume it'll do bad things  
**Adeimantus:** it just did what you told it to  
**Glaucon:** I can hardly even login with the live CD, it crashes 50% of the time while booting  
**Glaucon:** shit's broken, tbh  
**Thrasymachus:** I just... I just don't get it  
**Thrasymachus:** You do the strangest, most difficult thing at every possible turn and then are baffled when it doesn't work  
**Adeimantus:** glaucon.txt  
**Glaucon:** I'm not baffled that MINIX doesn't work, who said I was baffled  
**Glaucon:** it's MINIX, of course it's broken  
**Socrates:** MINIX runs on more systems than windows you cheeky cunt  
**Adeimantus:** if you knew it was broken, why did you install it to begin with?  
**Glaucon:** I'm surprised however that NetBSD kernel panicked on every live CD boot, however   
**Glaucon:** the default boot is without  
**Thrasymachus:** The sooner Glaucon realises he needs to install Ubuntu and learn how to `echo` and `cd` the happier he will be  
**Adeimantus:** ^  
**Glaucon:** Adeimantus bc I expected to at least be able to install it and compile basic programs, but alas  
**Thrasymachus:** But it looks like it's going to take a long time  
**Glaucon:** &gt;install Ubuntu  
**Glaucon:** I don't understand why I wouldn't just use BSD or Void like an adult  
**Adeimantus:** because you're not an adult  
**Adeimantus:** &gt;apt install build-essential  
**Adeimantus:** "look ma I can compile shit"  
**Glaucon:** Although, since NetBSD is borked, and I can't install MINIX  
**Glaucon:** I'm a bit limited on BSD options  
**Glaucon:** I have a Dell Dimension 4600, as far as I know everything is stock but the RAM is upgraded to 1.5GB  
**Thrasymachus:** Glaucon won't be happy until he's mask-off doomer blackpilled, full joker mode minimal MINIX user  
**Glaucon:** MINIX is bloat tho  
**Thrasymachus:** Ah yes, how foolish of me  
**Adeimantus:** and yet you insist on installing it  
**Adeimantus:** and defining runtime libraries as bloat despite not knowing what a compiler is or does  
**Glaucon:** because it's easier than moving straight down to ELKS  
**Glaucon:** sillybilly  
**Thrasymachus:** When have you ever---EVER---wanted to do something easy  
**Glaucon:** Thrasymachus never  
**Glaucon:** I have however, wanted to do things that are easier for the time being  
**Glaucon:** if you can get a full desktop on a Amstrad CPC then it shouldn't be so hard to get one on an IBM XT  
**Glaucon:** I think a more reasonable option right now would be LFS  
**Glaucon:** bc I can't get MINIX or NetBSD working  
**Glaucon:** and then move from LFS to ELKS  
**Thrasymachus:** It just doesn't stop  
**Socrates:** install Gentoo  

Glaucon and the Temple of God
-----------------------------

**Socrates**: this is what Glaucon is worried will happen if he uses technology: <https://www.youtube.com/watch?v=6y0QKiTQPkY>  
**Socrates**: (btw the lightning doesn't happen with TempleOS)  
**Socrates**: which actually is a really good idea  
**Socrates:** Glaucon: have you tried TempleOS yet?  
**Thrasymachus:** Oh god don't  
**Thrasymachus:** DON'T  
**Glaucon:** lmao  
**Glaucon:** If it had software I would  
**Glaucon:** I essentially want a Unix equivalent of TempleOS  
**Adeimantus:** it's minimal as fuck  
**Adeimantus:** it can't do shit  
**Adeimantus:** and it runs on a type of C  
**Adeimantus:** right up your alley  
**Glaucon:** HolyC  
**Glaucon:** I'm more than aware   
**Thrasymachus:** "I want a Unix equivalent of TempleOS.  That's why I'm compiling some weird subset of the Linux kernel on FreeDOS"  
**Socrates:** I'm always pleased when I hear HolyC  
**Socrates:** what an amazing pun  
**Socrates:** miss you terry  
**Adeimantus:** tfw  
**Socrates:** hope you're fucking up those glowinnadarks in heaven  
**Socrates:** (don't confuse them with the angels bro)  
**Thrasymachus:** Press "N" to pay respects  
**Socrates:** N  
**Thrasymachus:** I  
**Socrates:** C  
**Socrates:** E... work terry  
**Thrasymachus:** fun ruiner  

Keep it simple and/or difficult
-------------------------------

**Cephalus:** what's that nutter's distro, the one who was forced quit void Linux  
**Cephalus:** K1ss Linux I think  
**Cephalus:** pure autism and retard tier  
**Cephalus:** <https://k1ss.org/>  
**Cephalus:** you might find it interesting  
**Cephalus:** btw I only say that because on principle it's a bit batshit insane to consider it for most production use  
**Glaucon:** Kiss Linux looks interesting  
**Glaucon:** I've seen it before  
**Glaucon:** but I automatically discount any OS that only runs 64-bit  
**Cephalus:** do you use IA32?  
**Socrates:** ironically  
**Socrates:** 64 bit is simpler than 16/32  
**Glaucon:** that's why I'm only going to use IA-16  
**Adeimantus:** can't have it actually using his hardware. hardware usage is bloat.  
**Glaucon:** yeah I know it's way too powerful  
**Glaucon:** I'm gonna have to find a weaker PC, or use the ao486 core on the MiSTer  
**Glaucon:** <https://github.com/sergev/LiteBSD>  
**Socrates:** &gt;runs only on PIC32  
**Socrates:** damn  
**Socrates:** do it  
**Socrates:** that'd be sick as fuck  
**Glaucon:** I'm gonna buy one  
**Glaucon:** I think  
**Socrates:** be sure to research the toolchains beforehand  
**Glaucon:** the what  
**Socrates:** the toolchain  
**Socrates:** the compilers have unusual licensing  
**Socrates:** (common in the embedded world)  
**Glaucon:** uh  
**Glaucon:** sure  
**Socrates:** how do you get code onto a PIC  
**Glaucon:** the toolchain of course  
**Glaucon:** I think  
**Glaucon:** do I win?  

The truth gets vicious when you corner it
-----------------------------------------

**Socrates:** so, remember the other day I linked [an architecture diagram for an AVR device?](/assets/img/agora/block-diagram-avr-chip.png)  
**Glaucon:** yes  
**Socrates:** and it had things like flash ROM and static SRAM *inside* the system boundary?  
**Glaucon:** I don't remember that but I'll take your word  
**Socrates:** PICs are microcontrollers and entirely unlike common desktop devices  
**Socrates:** they store their software on-chip  
**Socrates:** and have non-standard ISAs  
**Socrates:** if you don't know what a compiler is, you do not want to be using a microcontroller  
**Glaucon:** There's no way to have it boot from a device?  
**Socrates:** only if you write and program an appropriate BIOS+bootloader  
**Socrates:** write and program being specific and program does not mean what you think it means  
**Glaucon:** Sounds like exactly what I need  
**Glaucon:** lemme find one to buy  
**Socrates:** ok, well, like I said, I recommend Arduino if you want to go down this path  
**Socrates:** understand that you'll be using C but not in an environment like anything you've programmed before  
**Glaucon:** &gt;he thinks I've programmed before  
**Glaucon:** haha  
**Socrates:** ok, let me put it this way. you will need to learn a custom variant of C, use a custom compiler, assembler, linker, hardware programming tools, and learn electronics enough (way past the "build you own Z80 stuff")  
**Glaucon:** Okay, now  
**Glaucon:** I'm a little scared  
**Glaucon:** Let's start with LFS  
**Socrates:** you will probably never talk to an actual hard drive without also learning how to design and fabricate/order PCBs for high-speed digital signals  
**Socrates:** high-speed digital design being a masters in itself and is the primary reason why computers are slow these days  
**Socrates:** (mainly, its too hard to get a fast link between RAM and CPU because at these speeds, every bit of wire is an antenna and they all bleed signals into each other)  
**Socrates:** its the same reason we went from slow serial links, to faster parallel links, back to serial links  
**Socrates:** serial links are easy to design but rely on better terminal electronics  
**Socrates:** parallel links are fucking nails  
**Glaucon:** well it's a good thing I'm using a 5kb IRC client then  
**Socrates:** that's 10% of your entire ram  
**Glaucon:** good thing I only need to do a few tasks at once  
**Socrates:** good, because you're probably not getting interactive multitasking  
**Glaucon:** I was using DOS just fine I just wanted to have maybe 2-3 programs open at a time  
**Socrates:** oh  
**Socrates:** well  
**Socrates:** good luck  
**Glaucon:** maybe I should just use multitasking DOS  
**Glaucon:** or Xenix  
**Socrates:** generally, this is for embedded systems, not user-facing  
**Glaucon:** yes of course  
**Glaucon:** I don't think I'll buy a microcontroller I'm not that crazy  
**Glaucon:** I'm gonna try installing LFS  
**Socrates:** I hope I get to tell you about compilers some time  
**Socrates:** because I like you more now its clear your just a silly kid rather than the least subtle troll  

Drawing a line in the silicon
-----------------------------

**Glaucon:** wait  
**Glaucon:** you really thought I installed FreeDOS on real hardware to test it as a desktop just to troll you guys?  
**Glaucon:** I mean quite honestly don't give yourselves so much credit  
**Socrates:** I mean, I would say "surely no one is that stupid"  
**Socrates:** but here you are  
**Glaucon:** KEK  
**Glaucon:** I didn't come in here trying to hoping to use a MSX as a desktop and expect everyone to smile and nod at me  
**Glaucon:** I'm not 15  
**Glaucon:** you guys respond better than a lot of minimalists themselves do  
**Glaucon:** bc they each have their own point that they're comfortable with, and the second you go beyond that they start to get pissy  
**Glaucon:** say to someone who's using 9front that it's bloated and they get red in the face  
**Glaucon:** bc it's a threat to their entire identity  
**Adeimantus:** or because you have yet to define what "bloat" actually means  
**Glaucon:** bloat means just about everything when it comes to cat-v  
**Glaucon:** they openly admit that there's no real OS anymore that completely adheres to the UNIX philosophy, maybe Plan 9 and OpenBSD  
**Glaucon:** that's about it  
**Glaucon:** and most people don't use either  
**Thrasymachus:** You'd make a fantastic case study for cat-v brain damage  
**Thrasymachus:** I'm somehow confident that eventually you'll come right, but for the moment you're hopelessly confused  
**Adeimantus:** if it means everything, it means nothing  
**Adeimantus:** did that ever occur to you?  
**Glaucon:** no Adeimantus lmao  
**Glaucon:** bc relativity exists  
**Glaucon:** I can say Windows is bloated compared to Void  
**Glaucon:** and that's objectively true  
**Adeimantus:** why?  
**Glaucon:** because the average user can do what they need to do with less, both sysops and desktop users  
**Adeimantus:** if that's your base, I think you're conflating "can" with "should"  
**Adeimantus:** something is not bloat purely because there's a more obscure or tinier way to do something  
**Adeimantus:** part of the Unix philosophy includes choice of tooling by virtue of their modular nature. If there was only one good way to do something, alternative tools would not exist or be needed. If they add something legitimately useful, they're not bloat. bloat comes from adding useless things that go beyond the purpose or focus of the tool  
**Glaucon:** bro if you need bloat to work that's fine I just don't  
**Glaucon:** das all  
**Adeimantus:** much like casions and dojos, this "bloat" is all in your mind  
**Diogenes:** but alpine is "too minimal"  
**Diogenes:** 🤔  
**Glaucon:** it's not too minimal at all  
**Glaucon:** it's just not what I'd call finished lmao  
**Diogenes:** ok, so everything that goes beyond "finished" is bloat?  
**Diogenes:** like security, or performance?  
**Glaucon:** no I'd say it's not even finished  
**Glaucon:** like I said, couldn't even get audio working, basic security issues  
**Diogenes:** then what is "finished"  
**Diogenes:** is there any software that is finished?  
**Glaucon:** Finished is OpenBSD lmao  
**Glaucon:** or FreeBSD  
**Glaucon:** or FreeDOS  
**Glaucon:** is a great example  
**Glaucon:** most DOS variants, even  
**Glaucon:** we can add to it, sure, but it's still completely functional on a boot floppy  
**Diogenes:** so those things don't need any improvements?  
**Glaucon:** yeah DOS especially  
**Glaucon:** Jim Hall has said this, he considered making it 32-bit, implementing a networking stack, etc.  
**Diogenes:** so new things are, per definition, bloat?  
**Diogenes:** like Unicode?  
**Glaucon:** yes  
**Diogenes:** interesting  
**Diogenes:** so you're basically Amish with a different year in which you stop advancements  
**Diogenes:** a different time at which you think "this is the way it was all meant to be, time to stop"  
**Glaucon:** I was visiting the Amish a few weeks ago  
**Glaucon:** was nice  
**Diogenes:** wonder what constitutes this perfect moment in technological development specifically  
**Diogenes:** was it when the shell was invented  
**Diogenes:** was it when ASCII was standardized  
**Diogenes:** was it when floppies were invented  
**Glaucon:** I've considered this  
**Glaucon:** I draw the line at about the PDP-11  

Not done yet
------------

**Cephalus:** Diogenes: how do I learn2ansible  
**Diogenes:** Cephalus: pain and suffering  
**Cephalus:** Diogenes: please give it to me daddy Ansible  
**Thrasymachus:** Can you two wait a few minutes while they finish ripping Glaucon's soul in half please  

Learn Python, dammit
--------------------

**Socrates:** Glaucon: being able to boot small systems isn't the same as understanding them, or how to use them  
**Socrates:** which is really the crux of why this is so painful  
**Glaucon:** Socrates of course but I have learned a lot  
**Socrates:** yes, the slow and hard way  
**Glaucon:** &gt;the slow and hard way  
**Glaucon:** it's been a few days lmao  
**Glaucon:** it's a lot faster than I ever learned before   
**Adeimantus:** and in that time, what have you actually done?  
**Adeimantus:** aside from fuck up hard enough to blow away your old install  
**Socrates:** yes, and its going to take, many, many, many more  
**Glaucon:** Adeimantus I mean I can reinstall FreeDOS and reconfigure it in an hour  
**Adeimantus:** configuring an OS older than you are isn't terribly hard  
**Glaucon:** reinstall it, install links and the packet driver and the music player, install DOS/32A  
**Glaucon:** add the packet driver to autoexec, and that's it  
**Socrates:** make no mistake, no one here things you're not learning, but if you start with adding, then multiplication, then algebra, you're going to reach calculus faster than if you start with complex differential equations on day one and smash yourself into it for 3 years  
**Glaucon:** I am starting with adding, then multiplication, then algebra though  
**Glaucon:** I'm starting from the bottom up  
**Socrates:** Glaucon: no, you're not  
**Glaucon:** should I go lower?  
**Socrates:** Glaucon: the idea of this being bottom up learning isn't true  
**Glaucon:** Then I should go lower, no?  
**Diogenes:** lower in this case would be harder  
**Diogenes:** so no  
**Glaucon:** I can brush up on circuitry  
**Socrates:** learning computing from first principles is what has taken many PhDs 50 years  
**Socrates:** start from the abstractions  
**Socrates:** dig into them as you become comfy with each  
**Glaucon:** I wonder what that means long term   
**Socrates:** there's a reason why we teach python rather than C in schools  
**Socrates:** some might say its right, some might say its wrong  
**Socrates:** but teaching the concepts without the sharp edges is sensible  
**Glaucon:** &gt;paying to learn python  
**Glaucon:** do you think I should pay to learn python?  
**Socrates:** unironically yes, you should learn at least some high level language first  
**Socrates:** then C  
**Socrates:** and then how C applies to operating systems  
**Socrates:** just choose something high level and learn to program  
**Socrates:** then learn how to program in C  
**Socrates:** programming languages and programming-the-skill are orthogonal  
**Socrates:** learn programming-the-skill in a high level language so you can focus on getting that to a high standard before you slow yourself down by having to multitask with the sharp edges that C makes you wade through  
**Cephalus:** tbh python does get your dick caught in the ceiling fan occasionally, but it's better than most languages  
**Adeimantus:** why does that metaphor keep coming up  

Epilogue
--------

**Socrates:** what's a linker  
**Adeimantus:** not doing much C, as I recall, a linker is used in compilation to combine object files into other files  
**Socrates:** thanks for that  
**Adeimantus:** did I miss something here?  
**Socrates:** I was teaching him about translation units from the C standard earlier, I was joking that he doesn't know what a linker is with respect to "defines as bloat when you don't know what a compiler is"  
**Thrasymachus:** I think Adeimantus thought you were testing him :)  
