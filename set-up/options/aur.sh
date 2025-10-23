while true; do
	if pacman -Qq yay &>/dev/null; then
		echo "AUR helper (yay) already installed. Skipping this step."
		aurSource="yay"
		yay -Syu --needed
		clear
		return
	fi
	if pacman -Qq paru &>/dev/null; then
		echo "AUR helper (paru) already installed. Skipping this step."
		aurSource="paru"
		paru -Sy --needed
		clear
		return
	fi

	echo "Access to the AUR is necessary for the installation of this rice."
	echo "___ Please select an option from the menu to proceed"
	echo " |"
	echo " |- [1] yay"
	echo " |- [2] paru"
	echo " |- [3] Skip | I have My Own" 
	echo " |- [4] What are these?"
	read -p "> " aurSelect

	case "$aurSelect" in
		1)
			clear
			install_aur_helper "yay" "https://aur.archlinux.org/yay-bin.git"
				if [[ $? -eq 0 ]]; then # checks for return 0
					return
				fi
				;;
		2)
			clear
			install_aur_helper "paru" "https://aur.archlinux.org/paru-bin.git"
			if [[ $? -eq 0 ]]; then # checks for return 0
				return
			fi
			;;
		3)
			clear
			custom_aur_helper
			if [[ $? -eq 0 ]]; then # checks for return 0
				return
			fi 
			;;
		4)
			echo "___ [AUR] Arch User Repository - A community-driven repository of build scripts that let other users install unofficial software"
			echo " | "
			echo " |-|- [Yay] Yet Another Yogurt"
			echo " | |- "
			echo " | "
			echo " |-|- [Paru] Feature Packed AUR Helper"
			echo " | |-"
			echo " | "
			echo " |- [Other] You can always install another aur helper at any time after installation."
			;;
		*)
			clear
			echo "X Invalid choice. Please try again."
			echo ""
			;;
	esac
done
