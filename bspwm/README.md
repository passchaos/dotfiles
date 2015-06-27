IMPORTANT ASPECTS OF THE SYSTEM WHEN USING THIS
===============================================

0. Replace everything that has a "dot" on the front with a... well, a dot. All folders and files are also relative to your home folder.
1. YOU NEED TO EDIT THE CONFIGURATION FILES. EACH ONE OF THEM. BY HAND. You don't want your system to behave unexpectedly, right?
2. There are some applications which I recommend installing, after bspwm, sxhkd and dmenu-xft (AUR). They are:
- urxvt. Because that's the best terminal you can ever get.
- Conky (for top bar. I was lazy enough to not learn how to use lemonbar), OR...
- bmpanel2 (Git version specially) if you want an actual panel with indicators support.
- Ranger, if you need a terminal file manager. Thunar, if you need a graphical manager. Both are excellent. I did not change Ranger's initial settings, so I don't have a config file to put here.
- dunst, for lightweight notifications support.
- dzvol (grab the code on https://github.com/allevaton/dzvol) for volume control. You can also use dvol by bruenig (code is at https://bbs.archlinux.org/viewtopic.php?id=46608), though I never tested it.
- lxappearance so you can change things such as icon theme, GTK theme and etc.
- Screenfetch, because, if you found this repo, you're most likely a ricing-addict hipster like me.
- If you are REALLY going to use bspwm everyday, then you must definitely look into wifi-menu for configuring your wifi network, if you haven't already installed it. Keep in mind that, if you were using a graphical DE before, you'll probably need to disable NetworkManager.service and enable netctl.
- mpd + mpc + ncmpcpp. Because you like music. Don't you? I've included my own configuration files on this repo, but YOU MUST ADAPT it to your own computer, as configurations for each program can vary, such as your audio manager (pure ALSA or Pulse, etc). Also, ENABLE your PulseAudio equalizer support, or REMOVE the mixer_type property on mpdconf.
- Also on mpd, you need to create a few files inside the dotmpd folder, which I have actually provided. They are blank, so make sure to only open mpd after you configured your library location appropriately.
- mpdscribble: For last.fm / libre.fm scrobbling. Check the configuration file.

You should have a minimal bspwm environment working with these.
Other applications such as a web browser are all up to you.
