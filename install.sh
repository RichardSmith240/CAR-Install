clear
echo '

          _____                   _____                   _____           
         /\    \                 /\    \                 /\    \          
        /%%\    \               /@@\    \               /##\    \         
       /%%%%\    \             /@@@@\    \             /####\    \        
      /%%%%%%\    \           /@@@@@@\    \           /######\    \       
     /%%%/\%%%\    \         /@@@/\@@@\    \         /###/\###\    \      
    /%%%/  \%%%\    \       /@@@/__\@@@\    \       /###/__\###\    \     
   /%%%/    \%%%\    \     /@@@@\   \@@@\    \     /####\   \###\    \    
  /%%%/    / \%%%\    \   /@@@@@@\   \@@@\    \   /######\   \###\    \   
 /%%%/    /   \%%%\    \ /@@@/\@@@\   \@@@\    \ /###/\###\   \###\    \  
/%%%/____/     \%%%\____\@@@/  \@@@\   \@@@\____\###/  \###\   \###\____\ 
\%%%\    \      \%%/    /@@/    \@@@\  /@@@/    /##/   |####\  /###/    / 
 \%%%\    \      \/____/ \/____/ \@@@\/@@@/    / \/____|#####\/###/    /  
  \%%%\    \                      \@@@@@@/    /        |#########/    /   
   \%%%\    \                      \@@@@/    /         |##|\####/    /    
    \%%%\    \                     /@@@/    /          |##| \##/    /     
     \%%%\    \                   /@@@/    /           |##|  \/____/	  
      \%%%\    \                 /@@@/    /            |##|   |           
       \%%%\____\               /@@@/    /             \##|   |           
        \%%/    /               \@@/    /               \#|   |           
         \/____/                 \/____/                 \|___|           


Welcome to Caeli'\''s Automatic Rice Installer
This rice has been configured for Arch Linux specifically and most likely will not work on other distributions

---Please select an option from the following menu:"
 |"
 |- [1] About"
 |- [2] Proceed with installation"
 |- [3] Exit"
 '
while true ; do
	read -p "> " installType
	case $installType in
		1) 
			cat <<- EOM
				This is an installer for an Arch Linux rice developed by the Twitch Streamer CaeliS240.
				It is a culmination of his first year using linux with custom key binds, color schemes and ui elements based around popular ricing tools.
				This Project was first started on October 22nd, 2025 in their Digital Logic design lecture.
				If you want to support them in their goals, have a good laugh on stream or want more art/tools/rices (like this one), please consider supporting them through their tips page on twitch.
							
			EOM

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
				cd set-up
				./preinstallation.sh
				./installation.sh
				./post-installation.sh
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
