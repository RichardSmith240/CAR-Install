clear
echo "          _____                   _____                   _____           "
echo "         /\    \                 /\    \                 /\    \          "
echo "        /%%\    \               /@@\    \               /##\    \         "
echo "       /%%%%\    \             /@@@@\    \             /####\    \        "
echo "      /%%%%%%\    \           /@@@@@@\    \           /######\    \       "
echo "     /%%%/\%%%\    \         /@@@/\@@@\    \         /###/\###\    \      "
echo "    /%%%/  \%%%\    \       /@@@/__\@@@\    \       /###/__\###\    \     "
echo "   /%%%/    \%%%\    \     /@@@@\   \@@@\    \     /####\   \###\    \    "
echo "  /%%%/    / \%%%\    \   /@@@@@@\   \@@@\    \   /######\   \###\    \   "
echo " /%%%/    /   \%%%\    \ /@@@/\@@@\   \@@@\    \ /###/\###\   \###\    \  "
echo "/%%%/____/     \%%%\____\@@@/  \@@@\   \@@@\____\###/  \###\   \###\____\ "
echo "\%%%\    \      \%%/    /@@/    \@@@\  /@@@/    /##/   |####\  /###/    / "
echo " \%%%\    \      \/____/ \/____/ \@@@\/@@@/    / \/____|#####\/###/    /  "
echo "  \%%%\    \                      \@@@@@@/    /        |#########/    /   "
echo "   \%%%\    \                      \@@@@/    /         |##|\####/    /    "
echo "    \%%%\    \                     /@@@/    /          |##| \##/    /     "
echo "     \%%%\    \                   /@@@/    /           |##|  \/____/	    "
echo "      \%%%\    \                 /@@@/    /            |##|   |           "
echo "       \%%%\____\               /@@@/    /             \##|   |           "
echo "        \%%/    /               \@@/    /               \#|   |           "
echo "         \/____/                 \/____/                 \|___|           "
echo ""
echo ""
echo "Welcome to Caeli's Automatic Rice Installer"
echo "This rice has been configured for Arch Linux specifically and most likely will not work on other distributions"
echo ""
echo "---Please select an option from the following menu:"
echo " |"
echo " |- [1] About"
echo " |- [2] Proceed with installation"
echo " |- [3] Exit"
echo ""
while true ; do
	read -p "> " installType
	case $installType in
		1) 
			echo "This is an installer for an Arch Linux rice developed by the Twitch Streamer CaeliS240."
			echo "It is a culmination of his first year using linux with custom key binds, color schemes and ui elements based around popular ricing tools."
			echo "This Project was first started on October 22nd, 2025 in their Digital Logic design lecture."
			echo "If you want to support them in their goals, have a good laugh on stream or want more art/tools/rices (like this one), please consider supporting them through their tips page on twitch."
			echo ""
			read -p "> "
			;;
		2)
			clear
			sleep 3
			echo "Are you ready to begin? [Y/n]"
			read -p "> " begin
			if [[ "$begin" == "y" || "$begin" == "" ]] ; then
				clear
				## mkdir DOTS
				## cd DOTS
				## git clone {repo link}
				./src/set-up/preinstallation.sh
				./src/set-up/installation.sh
				./src/set-up/post-installation.sh
			fi
			exit 0
			;;
		3)
			echo "That's okay."
			echo "Come again another time"
			exit 0
			;;
		*)
			echo "Please try again"
			echo ""
			;;
	esac
done
