clear
echo "          _____                    _____                    _____          "
echo "         /\    \                  /\    \                  /\    \         "
echo "        /::\    \                /::\    \                /::\    \        "
echo "       /::::\    \              /::::\    \              /::::\    \       "
echo "      /::::::\    \            /::::::\    \            /::::::\    \      "
echo "     /:::/\:::\    \          /:::/\:::\    \          /:::/\:::\    \     "
echo "    /:::/  \:::\    \        /:::/__\:::\    \        /:::/__\:::\    \    "
echo "   /:::/    \:::\    \      /::::\   \:::\    \      /::::\   \:::\    \   "
echo "  /:::/    / \:::\    \    /::::::\   \:::\    \    /::::::\   \:::\    \  "
echo " /:::/    /   \:::\    \  /:::/\:::\   \:::\    \  /:::/\:::\   \:::\____\ "
echo "/:::/____/     \:::\____\/:::/  \:::\   \:::\____\/:::/  \:::\   \:::|    |"
echo "\:::\    \      \::/    /\::/    \:::\  /:::/    /\::/   |::::\  /:::|____|"
echo " \:::\    \      \/____/  \/____/ \:::\/:::/    /  \/____|:::::\/:::/    / "
echo "  \:::\    \                       \::::::/    /         |:::::::::/    /  "
echo "   \:::\    \                       \::::/    /          |::|\::::/    /   "
echo "    \:::\    \                      /:::/    /           |::| \::/____/    "
echo "     \:::\    \                    /:::/    /            |::|  ~|          "
echo "      \:::\    \                  /:::/    /             |::|   |          "
echo "       \:::\____\                /:::/    /              \::|   |          "
echo "        \::/    /                \::/    /                \:|   |          "
echo "         \/____/                  \/____/                  \|___|          "
echo ""
while true; do
	echo ""
	echo "Welcome to Caeli's Automatic Rice Installer"
	echo "This rice has been configured for Arch Linux specifically and most likely will not work on other distributions"
	echo ""
	echo "---Please select an option from the following menu:"
	echo " |"
	echo " |- [1] About"
	echo " |- [2] Proceed with installation"
	echo " |- [3] Exit"
	echo " |"
	echo "---"
	echo ""
	read -p "> " installType
	case $installType in
		1) 
			clear
			echo "This is an installer for an Arch Linux rice developed by the Twitch Streamer CaeliS240"
			echo "It is a culmination of his first year using linux with custom key binds, color schemes and ui elements based around popular ricing tools."
			echo "This Project was first started on October 22nd, 2025 in their Digital Logic design lecture."
			echo "If you want to support them in their goals, have a good laugh on stream or want more tools/rices like this one, please support him through his tips page on twitch"
			echo ""
			echo "Press enter to continue: "
			read -p "> "
			;;
		2)
			clear
			while true; do

				if (pacman -Qi git > /dev/null ; then
					pacman -S --noconfirm git
					echo "You have successfully installed git"
				else
					echo "Git is already installed"
					echo "You may proceed"
				fi
			done
			sleep 3
			echo "Are you ready to begin? [Y/n]"
			read -p "> " begin
			if 
			clear
			./set-up/preinstallation.sh
			./set-up/installation.sh
			
			;;
		3)
			clear
			echo "That's okay."
			echo "Come again another time"
			exit 0
			;;
		*)
			clear
			echo "Please try again"
			echo ""
			;;
	esac
done
