---
layout: guide
title: Playing ZUN Touhou games on GNU/Linux with wine
authors: [
	"apt-get"
]
---

# Playing ZUN Touhou games on GNU/Linux with Wine

*Disclaimer: I'm using Arch Linux. Instructions may be slightly different depending on your distro.*

I've personally had a bit of trouble running touhou games on Linux at first. This guide is my personal effort towards helping people play them. A lot of guides online are quite outdated and mention bugs that were fixed years ago.

  - [Initial preparations](#section-id-7)
  - [Preparing the virtual drive](#section-id-21)
  - [Installing games](#section-id-61)
    - [Installing from an executable](#section-id-69)
    - [Installing from an archive/folder](#section-id-75)
  - [Installing translations](#section-id-91)
  - [Creating game shortcuts](#section-id-105)
  - [Launching the game](#section-id-127)
  - [FAQ](#section-id-135)
      - [I need to launch my game in a japanese locale!](#section-id-137)
      - [My window manager / desktop environment is fucking up the dimensions of the program!](#section-id-147)
      - [I need to access the hard drive. How do I open it in my file manager?](#section-id-155)
      - [Hisoutensoku / one of the fighting games is fucking up!](#section-id-159)
      - [I can't select anything in the menu, the cursor keeps moving!](#section-id-163)
      - [There's no music in-game!](#section-id-167)
      - [I keep getting a crash screen, even though everything is working fine!](#section-id-168)
  - [Contact](#section-id-171)
 
<div id='section-id-7'/>

## Initial preparations

First, you should install **PlayOnLinux**. Instructions depend on your distro. Here's the commands for the most common ones:

- Arch Linux: `sudo pacman -S playonlinux`
- Ubuntu: [Follow these instructions](https://help.ubuntu.com/community/PlayOnLinux).
- Fedora: [RPM repository](http://rpm.playonlinux.com/).
- Gentoo: `emerge --ask app-emulation/playonlinux`

The reason we're gonna use PlayOnLinux is that we're going to install a bunch of packages that could make your existing wine installation unstable and buggy.

You can find an archive of touhou games on nyaa. thcrap is available [here](https://github.com/thpatch/thcrap/releases/).


<div id='section-id-21'/>

## Preparing the virtual drive

First, we'll start PlayOnLinux. The executable name is `playonlinux`.

![Main POL window](https://i.imgur.com/l1efYXF.png)

This is where you're going to be able to launch all of your games. (one convenient aspect of using PlayOnLinux is a centralized interface for all of your games.)

The first thing we're gonna do is create a virtual drive which will contain all of our installed games. To do this, click on the "Install" button at the top, then on "Install a non-listed program" on the bottom left of the new window.

![Installing a non-listed program](https://i.imgur.com/5dRz6wv.png)

When PlayOnLinux gives you the choice between installing in a new virtual drive or editing an existing application, choose the former option.

![New virtual drive](https://i.imgur.com/26J2Oeu.png)

Give a name to the new virtual drive. It doesn't really matter, just choose something you'll remember.

![Giving a name to the virtual drive](https://i.imgur.com/vGeRWOF.png)

On the next screen, choose "Install some libraries".

![Installing libraries](https://i.imgur.com/CYh8ayq.png)

Choose a 32-bit installation. Yes, even if your processor is a 64-bit one. Wine is still kind of buggy in 64-bit mode.

![Choosing the architecture](https://i.imgur.com/fHTwpa4.png)

Now, we're going to install the packages that are often needed by visual novels. These are: corefonts, d3dx9\_36, directmusic, dsound, and dinput8. Simply select all of the "POL\_Install\_\<package name\>" options.

![Selecting packages](https://i.imgur.com/84z2Elk.png)

Everything should install relatively quickly. After the installation finishes, you should see this window:

![Installation window](https://i.imgur.com/qT1r5Op.png)

You can ignore it for now. simply press Cancel.

Your virtual drive is now ready to install games on it.

<div id='section-id-61'/>

## Installing games

Generally, games can be installed in two ways: either from an installation executable/exe, or simply extracted and ran from an archive. You probably have an archive.

Everything from now on will happen in the configuration window. You can access it by pressing "Configure" at the top of the main window. Then, click on your virtual drive on the left:

![Settings](https://i.imgur.com/wmWMmOo.png)

<div id='section-id-69'/>

### Installing from an executable

Go to the "Miscellaneous" tab, and click on "Run a .exe in this virtual drive", then simply choose the executable and follow the installation.

That was easy, wasn't it?

<div id='section-id-75'/>

### Installing from an archive/folder

This is a bit longer than the previous step, but it's still really easy. I'm going to use this collection as an example:

![Pirating is evil kids](https://i.imgur.com/Eq2VeJ2.png)

Go to the configuration window, move to the "Miscellaneous" tab, and click on "Open virtual drive's directory". This should open your file manager.

![Files](https://i.imgur.com/hdg7Uiv.png)

Navigate to the `drive_c/Program Files` folder, then copy your game installation there.

![Moving things](https://i.imgur.com/0bahiEc.png)

The game should now be inside your virtual drive, ready to be launched.

<div id='section-id-91'/>

## Installing translations

After copying our touhou installs, we're gonna need to apply translations using thcrap for the latest games. 

Extract the thcrap archive you downloaded in a folder (for example, `drive_c/Program Files/Touhou Community Reliant Patcher`).

Go to the configuration window, move to the "Miscellaneous" tab, and click on "Open a shell". The newly opened shell will place you at the root of the virtual drive. I will assume you know how to use `cd`, so navigate to the root of the directory you put thcrap in (for example, if you used the same path as me, `cd "Program Files/Touhou Community Reliant Patcher"` should work \[upper-case / lower-case matters!\]).

![Terminal window](https://i.imgur.com/u4FWCDH.png)

Then, type `wine thcrap_configure.exe`. Afterwards, follow the instructions (steps 3 to 6) [Here](https://www.thpatch.net/wiki/Touhou_Community_Reliant_Automatic_Patcher#Detailed).

![Patching games](https://i.imgur.com/XH0ARPI.png)

<div id='section-id-105'/>

## Creating game shortcuts

Installing the game is nice, but now we need to figure out how to launch it. In the configure window, go to the General tab and click "Make a new shortcut from this virtual drive". It will scan the executables inside the virtual drive and then display a list.

![These alt names for images are getting even less descriptive than my git history](https://i.imgur.com/TQxnGgk.png)

Scroll down until you reach the shortcuts ending with ".lnk" (these are thcrap's shortcuts). Afterwards, just select each shortcut (for example, "th07 (en).lnk") and click on "Next". Choose a shortcut name (for example "Touhou 07 - Perfect Cherry Blossom") and click on next again.

Your game is now displayed in the main POL window!

![Woo we did it reddit](https://i.imgur.com/2njbxws.png)

You'll be brought back to the shortcut selection menu. Just do it in batch for every single game and then click cancel when you're finished.

Please note that Touhou 06: Embodiment Of Scarlet Devil is not supported in thcrap. Therefore, you'll have to add "th06e.exe" (it's probably towards the beginning of the list). Fighting games are concerned too.

While we now have game shortcuts in the main POL window, there aren't any icons for most of the games. There's no easy fix for this: you'll have to download the icons ([from here, for example](http://en.touhouwiki.net/wiki/Category:Game_icons)) and apply them manually, either by right clicking each shortcut and selecting "Set the icon" or by putting the icons in `~/.PlayOnLinux/icones/32` and renaming them to the shortcut's exact name. (You may also copy all of the new icons in the `~/.PlayOnLinux/icones/full_size` folder if you want access to the "Very Large Icons" option in POL.)

This also means you can easily customize the icons used for the games.

![Cool, right?](https://i.imgur.com/qvZQCiP.png)

<div id='section-id-127'/>

## Launching the game

Just double click on the icon.

![IT WERKS](https://i.imgur.com/PJZPxYX.png)

=======================

<div id='section-id-135'/>

## FAQ

<div id='section-id-137'/>

#### I need to launch my game in a japanese locale!

First, verify you have the japanese locale installed. Instructions may vary based on your distro.

Next, go to the configuration window in POL and select the shortcut of the game you want to launch in a japanese locale. (Not the virtual drive!)

Then, go to the Miscellaneous tab, and paste "LANG="ja\_JP.UTF-8" in the "command to exec before running the program" box.

![Easy, isn't it?](https://i.imgur.com/OZosjnv.png)

<div id='section-id-147'/>

#### My window manager / desktop environment is fucking up the dimensions of the program!

Some tiling WMs, like i3 or bspwm, may alter the window, making it impossible to play or kind of ugly. To fix this, we're going to run the program in a virtual desktop. Open the configuration window in POL, go in the "Wine" tab, and click on "Configure Wine". Then, go to "Graphics, and click on "Emulate a virtual desktop".

![bspwm fucks up wine windows, for example](https://i.imgur.com/8TR4LDQ.png)

In this virtual desktop, the application should render correctly.

<div id='section-id-155'/>

#### I need to access the hard drive. How do I open it in my file manager?

Open the configuration window in POL, go in the "Miscellaneous" tab, and click on "Open virtual drive's directory". In the file manager window that opens, navigate to the `drive_c` folder. This is the root of the virtual drive.

<div id='section-id-159'/>

#### Hisoutensoku / one of the fighting games is fucking up!

I can't guarantee the stability of the TasoFro games under Wine. While they launch fine for me, they may not for you. Please check [this page](the link) for info on how to fix common glitches occurring for those.

<div id='section-id-163'/>

#### I can't select anything in the menu, the cursor keeps moving!

You didn't install dinput8.

<div id='section-id-167'/>

#### There's no music in-game!

You didn't install dsound and directmusic.

<div id='section-id-168'/>

#### I keep getting a crash screen, even though everything is working fine!

That happened to me too. Open the tools menu in the top POL bar, click on "PlayOnLinux console", type `cd shortcuts`, and type `POL_Shortcut_QuietDebug "exact shortcut name"` for each shortcut you don't want crash screens to open for.

<div id='section-id-171'/>

## Contact

If you have anything to add to this guide (or want to correct something I said), query apt-get on IRC. I'm on Rizon, freenode, and SynIRC. My e-mail address is aptget (at) cock (dot) lu.


