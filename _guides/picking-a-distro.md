---
title: Picking a GNU+Linux distribution
section: guides
layout: guide
authors: [
	"Patrick 'tyil' Spek &lt;p.spek@tyil.work&gt;",
	"ShadowM00n &lt;shadowm00n@airmail.cc&gt;",
	"Winston (winny) Weinert &lt;winston+fglt@ml1.net&gt;"
]
---

## Foreword
This is a small guide to hopefully help you settle on a certain GNU+Linux
distribution. This guide is written because the question "which distro should I
pick" comes up a lot, and a single reference document to picking a distro would
be much more useful than trying to answer the question to each one
individually.

Be aware that this is not a full, comprehensive guide. You should pick whatever
distro you like, and don't be afraid to experiment a with other distros. If you
feel like a distro should be mentioned, send in a MR on this repository.

## Which distro should I pick for …?
### Beginner friendly
#### [Linux Mint][mint]
The purpose of Linux Mint is to produce a modern, elegant and comfortable
operating system which is both powerful and easy to use. It's made to work out
of the box with full multimedia support while being easy to use. It is based on
Ubuntu, hence comes with all the software that Ubuntu itself supports.

#### [Lubuntu][lubuntu]
Lubuntu is a spin-off from [Ubuntu][ubuntu]. It comes with a graphical
installer and sports the LXDE desktop environment, which is ment to be
lightweight. LXDE by default comes with a taskbar, a "start" menu and desktop
icons which should be pretty straight-forward to anyone coming from a
Windows-like system.

#### [Xubuntu][xubuntu]
Xubuntu is a spin-off from [Ubuntu][ubuntu]. Like Lubuntu, it comes with
a graphical installer and the default UI is pretty similar to Windows.

### Customizability
#### [Fedora][fedora]
The server release provides netinstall images in which you can choose what is
installed at installation time like many other netinstall distros like Ubuntu.

#### [Gentoo][gentoo]
Gentoo is often hailed as the go-to distribution if you want to customize
**everything**. It has an advanced package system that uses so-called **USE
flags** to indicate which features you want and which ones you don't. This
brings along the downside of having to compile all your packages yourself, save
for a very small set of packages which have ***-bin*** versions available (such
as Firefox and LibreOffice).

#### [Mageia][mageia]
Using the traditional installer, Mageia is very customizable, yet easy for
beginners who are willing to read up on the documentation. All updates to the
system are tested by the QA team, so it's a pretty safe bet for stability too.
If you wish to do so, the installer can leave you with a system containing only
free software.

#### [Ubuntu netinstall][ubuntu]
This is the most minimal version of Ubuntu available. This means that you have
a small starting base which you can setup completely to your liking. Ubuntu
supports a PPA system to easily add in software that's missing from the main
repositories. There's also a big community behind it which is usually pretty
helpful and friendly.

### Freedom
#### [Parabola GNU/Linux-libre][parabola]
A distribution based on [Arch Linux][archlinux]. Since only a small part of
Arch official packages are nonfree or contain nonfree components, there's no
need for them to repackage everything. In their repos, you'll find Arch
official packages, directly from its official repositories, minus the nonfree
packages, plus their libre replacements, when possible.

#### [Trisquel][trisquel]
A free distribution based on [Debian][debian].

### Lightweight
#### [Debian netinstall][debian]
The netinstaller for Debian is the most minimal version you can start out with.
It's stable, produces a very small OS once done installing is incredibly
stable. Be aware that Debian by default does not allow non-free software in the
main repos, so not all hardware may be supported out of the box.  An amd64
Debian netinstall is about 1&nbsp;Gigabyte in size.

#### [Lubuntu][lubuntu]
Lubuntu's LXDE desktop environment is made specifically to be usable on systems
with low resources.  A Lubuntu install is about 4½&nbsp;GB.

#### [Xubuntu][xubuntu]
While not as lightweight as Lubuntu, it's lightweight enough to run on most
machines. It's a little more polished than Lubuntu by default, but this is
ofcourse subjective to your tastes.  A Xubuntu install is about 5½&nbsp;GB.

#### [Alpine][alpine]
A standard Alpine install is less than 1 Gigabyte.  Installation is dead
simple, however, it defers additional software configuration to the user.
Alpine is flexible enough for server, basic desktop, and embedded use.  Alpine
is also widely used for Docker and virtual machines.  Due to a reduced package
selection, a small tight-knit community, and use of the Musl libc, Alpine may
not be as stable as enterprise-grade distros.

### Stability
#### [Debian][debian]
Debian is often described as the most stable GNU+Linux distribution around.
The release cycles are incredibly slow, which is a good thing when going for
stability in general. Before packages hit the stable repositories, they have
been thoroughly tested to make sure that they won't break anything.

#### [Devuan][devuan]
Just as stable as Debian, because it (mostly) pulls from the same sources,
Devuan's distinctiveness comes from their commitment to preserving "init
freedom". As such, the primary user-facing changes are the removal of systemd
and changing various packages to remove (or replace) systemd dependencies. They
currently use the classical sysvinit by default.

#### [Mageia][mageia]
Due to their extensive QA testing before pushing new changes, the distro is
really stable, yet doesn't use packages as outdated as Debian stable.

### Ricing
Every distro can be customized to be Your Special Snowflake™. Just pick
whatever distribution's package manager feels best to you, and start
customizing everything you want different.

## Why isn't … in this list?
### [Arch Linux][archlinux]
Arch Linux doesn't provide anything special. People often claim it's
"customizable", but it's no more customizable than Ubuntu itself. The community
is also very unwelcoming to people who want to customize it beyond what the
devs intended.

There's claims of it being "lightweight", but a debian netinstall is smaller
than a base Arch Linux installation. This is mostly due to Arch Linux including
development headers in all their packages, which is completely unneeded for a
binary package distribution.

- [An email from an Arch Linux dev on Arch Linux](https://lists.archlinux.org/pipermail/arch-general/2015-July/039443.html)

### [FreeBSD][freebsd]/[OpenBSD][openbsd]
These are fine operating systems on themselves, but they are not GNU+Linux
distributions, therefore they are not included in this list. If you want to try
it out, the installation is about the same as Debian, but it comes with more up
to date software and a great ports system, but hardware support is often not as
great as GNU+Linux.

### [OpenSUSE][opensuse]
I've never used OpenSUSE nor do I know anyone who has ever done such a thing.
Therefore I can't recommend it with a nice little description about it. If you
have experience with it, and feel it should be included, please send in a merge
request.

### Everything not mentioned
It either doesn't fit the categories, or I just don't know about the
distribution. I'd greatly appreciate any help in maintaining this list, and
that includes suggestions for other distros in the list. You can have one
added by sending in a MR on the repository.

[alpine]: https://alpinelinux.org/
[archlinux]: https://www.archlinux.org/
[debian]: https://www.debian.org/
[devuan]: https://www.devuan.org/
[fedora]: https://getfedora.org/
[freebsd]: https://www.freebsd.org/
[gentoo]: https://www.gentoo.org/
[lubuntu]: https://lubuntu.me/
[mageia]: https://www.mageia.org/en/
[mint]: https://www.linuxmint.com/
[openbsd]: https://www.openbsd.org/
[opensuse]: https://www.opensuse.org/
[parabola]: https://www.parabola.nu/
[trisquel]: https://trisquel.info/
[ubuntu]: https://ubuntu.com/
[xubuntu]: https://xubuntu.org/

