declare -a depandancies_packages=()


while true ; do
	echo "Preparing Pre-installation Materials"
	sleep 2
	./options/aur.sh
	./options/fonts.sh
	./options/browser.sh
	./options/theme.sh
done
