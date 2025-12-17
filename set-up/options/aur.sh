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
			sudo pacman -S --needed git base-devel
			git clone https://aur.archlinux.org/yay.git
			cd yay
			makepkg -si
			installCheck()	
			;;
		2)
			clear
			sudo pacman -S --needed base-devel
			git clone https://aur.archlinux.org/paru.git
			cd paru
			makepkg -si
			installCheck()
			;;
		3)
			clear
			return
			;;
		4)
			echo "___ [AUR] Arch User Repository - A community-driven repository of build scripts that let other users install unofficial software"
			echo " | "
			echo " |-|- [Yay] Yet Another Yogurt"
			echo " | |- Fast build of cached files"
			echo " | |- Simple cli interface for building packages"
			echo " | "
			echo " |-|- [Paru] Feature Packed AUR Helper"
			echo " | |- Based off Yay but written in Rust"
			echo " | |- Syntax highlighting by default"
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

installCheck() {
	if pacman -Q $aurSource&>/dev/null; then
		clear
	    echo "$aurSource installed successfully!"
		echo "Would you like to remove the make directory? [Y/n]"
		read -p "> " confirm
		if [[ $confirm == "" || $confirm == "y" || $confirm == "Y" ]] ; then
			rm -r ~/$aurSource
		fi 
        clear
        return 0
    else
        echo ""
        echo "WARNING: Installation of AUR helper failed or could not be verified."
    fi
}
