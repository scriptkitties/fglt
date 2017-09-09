---
title: Playing visual novels on GNU/Linux with Wine
layout: guide
authors: [
	apt-get
]
---

# Playing Visual Novels on GNU/Linux with Wine

*Disclaimer: I'm using Arch Linux. Instructions may be slightly different depending on your distro.*

So you've finally switched to linux, and now you're eager to play some of your mongolian interactive books. However, you realise with horror that your favorite eroge doesn't load! Don't panic, though. This is a step-by-step guide to installing 99% of Visual Novel, using PlayOnLinux (which is actually wine).

*We're going to install Grisaia No Kajitsu as an example.*

  - [Initial preparations](#section-id-9)
  - [Preparing the virtual drive](#section-id-21)
  - [Installing games](#section-id-69)
    - [Installing from an executable](#section-id-77)
    - [Installing from an archive/folder](#section-id-83)
  - [Creating game shortcuts](#section-id-99)
  - [Launching the game](#section-id-111)
  - [FAQ](#section-id-119)
      - [I need to launch my game in a japanese locale!](#section-id-121)
      - [My window manager / desktop environment is fucking up the dimensions of the program!](#section-id-132)
      - [I need to access the hard drive. How do I open it in my file manager?](#section-id-147)
      - [My game crashes when starting / when attempting to display a dialog box!](#section-id-148)
  - [Contact](#section-id-151)
 
<div id='section-id-9'/>

## Initial preparations

First, you should install **PlayOnLinux**. Instructions depend on your distro. Here's the commands for the most common ones:

- Arch Linux: `sudo pacman -S playonlinux`
- Ubuntu: [Follow these instructions](https://help.ubuntu.com/community/PlayOnLinux).
- Fedora: [RPM repository](http://rpm.playonlinux.com/).
- Gentoo: `emerge --ask app-emulation/playonlinux`

The reason we're gonna use PlayOnLinux is that we're going to install a bunch of packages that could make your existing wine installation unstable and buggy.


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

![Giving a name to the virtual drive](https://i.imgur.com/Pi6CTKC.png)

On the next screen, choose "Install some libraries".

![Installing libraries](https://i.imgur.com/CYh8ayq.png)

Choose a 32-bit installation. Yes, even if your processor is a 64-bit one. Wine is still kind of buggy in 64-bit mode.

![Choosing the architecture](https://i.imgur.com/fHTwpa4.png)

Now, we're going to install the packages that are often needed by visual novels. These are: corefonts, d3dx9\_36, dotnet40, ffdshow, quartz, and vcrun6. Simply select all of the "POL\_Install\_\<package name\>" options.

![Selecting packages](https://i.imgur.com/3r9IaIv.png)

Everything should install relatively quickly. After the installation finishes, you should see this window:

![Installation window](https://i.imgur.com/TzMvUl4.png)

We're gonna install LAVFilters. It is often necessary to play videos in some VNs (TYPE-MOON's, for example). I know it may seem redundant along with ffdshow, but I've encountered games which needed both.

[Download the latest exe from here](https://github.com/Nevcairiel/LAVFilters/releases), and select it in the PlayOnLinux installation window. Just keep clicking next.

Afterwards, PlayOnLinux will show this window:

![Shortcuts window](https://i.imgur.com/Q4JRhdm.png)

You can ignore it for now. simply press Cancel.

Your virtual drive is now ready to install games on it.

<div id='section-id-69'/>

## Installing games

Generally, VNs can be installed in two ways: either from an installation executable/exe, or simply extracted and ran from an archive.

Everything from now on will happen in the configuration window. You can access it by pressing "Configure" at the top of the main window. Then, click on your virtual drive on the left:

![Settings](https://i.imgur.com/VHZHiQj.png)

<div id='section-id-77'/>

### Installing from an executable

Go to the "Miscellaneous" tab, and click on "Run a .exe in this virtual drive", then simply choose the executable and follow the installation.

That was easy, wasn't it?

<div id='section-id-83'/>

### Installing from an archive/folder

This is a bit longer than the previous step, but it's still really easy. I'm going to use this Grisaia installation as an example:

![Pirating is evil kids](https://i.imgur.com/GEpUKrH.png)

Go to the configuration window, move to the "Miscellaneous" tab, and click on "Open virtual drive's directory". This should open your file manager.

![Files](https://i.imgur.com/MdSgcyr.png)

Navigate to the `drive_c/Program Files` folder, then copy your game installation there.

![Moving things](https://i.imgur.com/NQj2oVb.png)

The game should now be inside your virtual drive, ready to be launched.

<div id='section-id-99'/>

## Creating game shortcuts

Installing the game is nice, but now we need to figure out how to launch it. Don't panic! It's extremely easy. In the configure window, go to the General tab and click "Make a new shortcut from this virtual drive". It will scan the executables inside the virtual drive and then display a list.

![These alt names for images are getting even less descriptive than my git history](https://i.imgur.com/44iyP73.png)

I'll choose grisaia.exe and name it "The Fruit of Grisaia". Afterwards, just select "I don't want to make another shortcut" (or install a shortcut for another game if you're doing it in batch).

Your game is now displayed in the main POL window!

![Woo we did it reddit](https://i.imgur.com/PnwuDTD.png)

<div id='section-id-111'/>

## Launching the game

Just double click on the icon.

![IT WERKS](https://i.imgur.com/MG6EXPg.jpg)

=======================

<div id='section-id-119'/>

## FAQ

<div id='section-id-121'/>

#### I need to launch my game in a japanese locale!

First, verify you have the japanese locale installed. Instructions may vary based on your distro.

Next, go to the configuration window in POL and select the shortcut of the VN you want to launch in a japanese locale. (Not the virtual drive!)

Then, go to the Miscellaneous tab, and paste "LANG="ja\_JP.UTF-8" in the "command to exec before running the program" box.

![Easy, isn't it?](https://i.imgur.com/OZosjnv.png)


<div id='section-id-132'/>

#### My window manager / desktop environment is fucking up the dimensions of the program!

Some tiling WMs, like i3 or bspwm, may alter the window, making it impossible to play or kind of ugly. To fix this, we're going to run the program in a virtual desktop. Open the configuration window in POL, go in the "Wine" tab, and click on "Configure Wine". Then, go to "Graphics, and click on "Emulate a virtual desktop".

![bspwm fucks up wine windows, for example](https://i.imgur.com/SVjDic9.png)

In this virtual desktop, the application should render correctly.

<div id='section-id-147'/>

#### I need to access the hard drive. How do I open it in my file manager?

Open the configuration window in POL, go in the "Miscellaneous" tab, and click on "Open virtual drive's directory". In the file manager window that opens, navigate to the `drive_c` folder. This is the root of the virtual drive.

<div id='section-id-148'/>

#### My game crashes when starting / when attempting to display a dialog box!

It may be because of missing MS Gothic / Mincho fonts. Some visual novels require them but don't necessarily take care to provide the files if they don't exist. Download these two files: [file 1](https://comfy.moe/vrqxtk.ttc), [file 2](https://comfy.moe/fqutxr.ttc), and rename them respectively `msgothic.ttc` and `msmincho.ttc`. Afterwards, move the two files in the `drive_c/windows/Fonts` folder (check the question above if you don't know how to do that). This should normally resolve the issue.


<div id='section-id-151'/>

## Contact

If you have anything to add to this guide (or want to correct something I said), query apt-get on IRC. I'm on Rizon, freenode, and SynIRC. My e-mail address is aptget (at) cock (dot) lu.
