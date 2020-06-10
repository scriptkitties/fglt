---
title: Resources
layout: default
---

## Shell scripting

Bash is by far the most common flavor of shell script, but there are others.
Knowing how to write at least basic shell script well is still essential for
using GNU/Linux, even in `$CURRENT_YEAR`.  Just a little time invested in
learning how to use shell script will pay off many times over.

- [Greg/Greycat's Wiki](https://mywiki.wooledge.org/)
    - [Bash Guide](https://mywiki.wooledge.org/BashGuide)—If you're unsure, *start here*!
    - [Bash FAQ](https://mywiki.wooledge.org/BashFAQ)
    - [Bash Pitfalls](https://mywiki.wooledge.org/BashPitfalls)
- [GNU Bourne-Again SHell](https://www.gnu.org/software/bash/)—Official Bash site and documentation
- [Bash Wiki](https://wiki.bash-hackers.org/)
- [The Grymoire](https://www.grymoire.com/Unix/index.html)—<code>$HOME</code> for <span style="font-variant:small-caps;">Unix</span> wizards
- [Shell Style Guide](https://google.github.io/styleguide/shellguide.html)—Google's coding guidelines for shell script
- [<cite>The Linux Command Line</cite>](http://linuxcommand.org/tlcl.php)—Site for a book by William Shotts
- [commandlinefu.com](https://www.commandlinefu.com/)—Interesting, useful, and dangerous one-liners
- [ShellCheck](https://www.shellcheck.net/)—Great online (and offline) tool to look for common errors in shell script
- [explainshell.com](https://explainshell.com/)—Get detail on how a line of cryptic shell script works
- Eric Pement's guides:
    - [sed guide](https://www.pement.org/sed/sed1line.txt)
    - [AWK guide](https://www.pement.org/awk/awk1line.txt)
- Daniel "drobbin" Robbins' guides:
    - [AWK by example](https://www.funtoo.org/Awk_by_Example,_Part_1)
    - [Bash by example](https://www.funtoo.org/Bash_by_Example,_Part_1)
    - [sed by example](https://www.funtoo.org/Sed_by_Example,_Part_1)

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
- [The Ultimate Oldschool PC Font Pack](https://int10h.org/oldschool-pc-fonts/)
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

- [Pytyle](https://sourceforge.net/projects/pytyle/)
- [Pytyle2](https://code.google.com/p/pytyle/)
- [Pytyle3](https://github.com/BurntSushi/pytyle3/)
- [Pytyle differences](https://bbs.archlinux.org/viewtopic.php?pid=1058199#p1058199)
- [Horsefuckers tiling BASH scripts](https://twily.info/scripts/tiling/)

