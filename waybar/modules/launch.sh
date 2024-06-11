#!/bin/bash

cowsay "What Would you like to Do $USER ?"
#echo "what would you like to do?"
echo "
1  Polkit Authentication
2  Clean Pacman Cache
3  NDS-Hypr GitPush 󰧇 
4  NDS-Hypr GitPll 󰦿 
5 List Packages  
"

# Now Getiing Input

read nds

# Working on Input
 
case $nds in

 1) 
    cowsay "You'll Need Password"
    /usr/lib/polkit-kde-authentication-agent-1

;;

2)
	cowsay "Okay it's Cleaning Time"
	sudo pacman -Rs $(pacman -Qdtq)
;;	

3)
	cowsay " NDS-Hypr GitPUSH "
	~/NDS-Hyprland/waybar/modules/ndshyprgitpush.sh
;;

4)
     cowsay " NDS-HYPR GitPULL"
    ~/NDS-Hyprland/waybar/modules/ndshyprgitpull.sh
;;

5)
    cowsay "listing Packages"
    pacman -Qe
   sleep 10m

esac

cowsay " it's Done"

sleep 5s
