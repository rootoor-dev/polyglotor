#!/bin/bash
: '
----------------------------
Author: ADI Junior "Rootoor"
----------------------------

SCRIPT: translate once many files in any language using command.
For example, to translate the substitles of some movies in a desired language, this is the best way to do it. 
Subtitles files get ".srt" as extension for their files.

Requirements:  
=============
1) System Requirements to be found at "https://github.com/soimort/translate-shell"
2) Install translate-shell (found at "https://github.com/soimort/translate-shell"  or "https://pkgs.org/download/translate-shell")

-----------------------------------------------------------------
WARNING > change the version language "fr" by whatever you like !
-----------------------------------------------------------------

RUN SCRIPT
==========

$ bash polyglotor.sh

'
for f in *.srt; do #==>> this line instructs the script to search for all the files in the current directory ending with .srt.
	exec trans -b :fr -i "$f" -o "${f%.srt}.trans.srt"  #==>> line uses the trans command on each file found and having .srt extension to translate them
done #==>> end of FOR LOOP
