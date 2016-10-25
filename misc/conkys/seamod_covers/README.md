ALL KINDS OF CONKYS
===================

All file architecture here is related to your home folder.
Please edit all files from each conky before using them.

How do I initialize these?
--------------------------
There are several ways.
I used to have a conky_init executable script inside .conky folder, which initialized one or more conkys by specifying the location of the configuration file for Conky, such as
conky -c configlocation
But do as you please. You can also adapt the rcs so you can rename them to .conkyrc and stash them on your home folder.

- Conky Seamod with Last.fm Support
    Files: conkyrc_seamod, seamod_rings.lua, mpdcover.sh, covers, tmp, nocover.png
    Name says all.
    Please not that the conky will also fetch the cover album, so it will have a cover cache on .conky/covers.
    This folder can get a little big if you have too much albums on your library.
    Also, please notice that conky might be tethered while fetching the album cover from last.fm.
    
- Conky Transparent-Tiles
    Files: everything on transparent-tiles/, mpdcover.sh, covers, tmp, nocover.png
    A modified version of transparent-tiles by webupd8team.
    In this case, I have modified the conky to my own tastes.
    Also included is a brazillian news channel (Google Notícias), and MPD support (same scripts as Seamod).
    Start by executing .conky/transparent-tiles/conkystart.sh.