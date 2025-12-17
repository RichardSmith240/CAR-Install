while true ; do
	if pacman -Qq $(pacman -Ssq noto-fonts | grep -v "^notodonts-emoji-flag-git") &>/dev/null ; then
		echo "Fonts have already been installed on this device" 
		echo "You are free to continue"
		sleep 2
		clear
		return
	fi
	echo "No noto-fonts have been detected on this device"
	echo "Would you like to install them now? [Y/n] "
	read -p "> " confirm
	if [[ $confirm == "" || $confirm == "y" || $confirm == "Y" ]] ; then
		echo "This configuration uses the Hack Noto-Nerd font."
		sudo pacman -S --needed ttf-hack-nerd
		while true ; do
			clear
			echo "___Which extra fonts would you like to install?"
			echo " |"
			echo " |- [1] Noto-Nerd Fonts"
			echo " |- [2] Windows Fonts" 
			echo " |- [3] Both"
			echo " |- [4] What are these"
			echo " |- [5] Exit Fonts Install"
			echo ""
			read -p "> " fontOption
			case "$fontOption" in
				1) 
					echo "Would you like to install the entire nerd font package? [Y/n] "
					read -p "> " installNerd 
					if [[ "$installNerd" == "Y" || "$installNerd" == "y" || "$installNerd" == "" ]] ; then
						sudo pacman -S --needed ttf-noto-nerd
					fi
					;;
				2)
					echo "Would you like to install the basic Windows fonts package? [Y/n]"
					read -p "> " installWinFont 
					if [[ "$installWinFont" == "y" || "$installWinFont" == "Y" || "$installWinFont" == "" ]]; then 
						sudo pacman -S --needed ttf-ms-fonts
					fi
					;;
				3) 
					echo "Are you sure? [y/N]"
					read -p "> " installBothFonts
					if [[ "$installBothFonts" == "y" || "$installBothFonts" == "Y" ]] ; then
						sudo pacman -S --needed ttf-ms-fonts ttf-noto-nerd
					fi	
					;;
				4)
					;;
				5)
					return
					;;
				*)
					echo "Please try again"
					read -p "> "
			esac
			echo "Would you like to install other fonts? [y/N]"
			read -p "> " otherFont
			if [[ "$otherFont" == "y" || "$otherFont" == "Y" ]] ; then
			else
				return
			fi
		done
	fi
done
