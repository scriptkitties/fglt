---
title: Resources
layout: default
---

## Shell scripting
- [The based GNU Bourne Again SHell](https://www.gnu.org/software/bash/)
- [The community driven BASH wiki](http://wiki.bash-hackers.org/)
- [The Grymoire - home for UNIX wizards](http://www.grymoire.com/Unix/index.html)
- [Greg's (also known as GreyCat's) Bash FAQ](http://mywiki.wooledge.org/BashFAQ)
- [Greg's (also known as GreyCat's) Bash Guide](http://mywiki.wooledge.org/BashGuide)
- [Greg's (also known as GreyCat's) Bash Pitfalls](http://mywiki.wooledge.org/BashPitfalls)
- [Pement SED guide](http://www.pement.org/sed/sed1line.txt)
- [Pement AWK guide](http://www.pement.org/awk/awk1line.txt)
- [Google's Shell Style Guide](https://google.github.io/styleguide/shell.xml)
- [The Linux Command Line - A Book By William Shotts](http://linuxcommand.org/tlcl.php)
- [Interesting, useful and dangerous one-liners](http://www.commandlinefu.com/)
- [Great online (and offline) linting tool](http://www.shellcheck.net/)
- [Know what you are doing](http://explainshell.com/)
- [drobbin's Awk by example](http://www.funtoo.org/Awk_by_Example,_Part_1)
- [drobbin's Bash by example](http://www.funtoo.org/Bash_by_Example,_Part_1)
- [drobbin's Sed by example](http://www.funtoo.org/Sed_by_Example,_Part_1)

## Fonts
- [General informations](https://wiki.archlinux.org/index.php/Fonts)
- [Huge list of font resources](https://github.com/brabadu/awesome-fonts)
- [List of monospaced fonts for programming](https://github.com/chrissimpkins/codeface)
- [List of monospaced bitmap fonts for programming](https://github.com/Tecate/bitmap-fonts)

You may also need to enable bitmap fonts and rebuild the font cache:

```
rm -v /etc/fonts/conf.d/70-no-bitmaps.conf
ln -s ../conf.avail/70-yes-bitmaps.conf .
fc-cache -v -f
```

- [Fonts patched with shitloads of icon glyphs](https://github.com/ryanoasis/nerd-fonts)
- [The Ultimate Oldschool PC Font Pack](http://int10h.org/oldschool-pc-fonts/)
- [Premade fontconfigs](https://wiki.archlinux.org/index.php/Infinality)
- [Configure your own fontconfig](https://wiki.archlinux.org/index.php/Font_configuration)
- [Read the documentation](file:///usr/share/doc/fontconfig/fontconfig-user.html)

## Tiling
### Tiling window managers
- [General informations](https://wiki.archlinux.org/index.php/Window_manager)
- [Awesome](https://wiki.archlinux.org/index.php/Awesome)
- [Awesome + Gaps](https://github.com/copycat-killer/lain)
- [i3](https://wiki.archlinux.org/index.php/I3)
- [i3 + Gaps](https://github.com/Airblader/i3)
- [bspwm](https://wiki.archlinux.org/index.php/Bspwm)
- [spectrwm](https://wiki.archlinux.org/index.php/Spectrwm)
- [dwm](https://wiki.archlinux.org/index.php/Dwm)

### Tiling scripts
These work DE/WM independent

- [Pytyle](http://sourceforge.net/projects/pytyle/)
- [Pytyle2](https://code.google.com/p/pytyle/)
- [Pytyle3](https://github.com/BurntSushi/pytyle3/)
- [Pytyle differences](https://bbs.archlinux.org/viewtopic.php?pid=1058199#p1058199)
- [Horsefuckers tiling BASH scripts](http://twily.info/scripts/tiling/)

