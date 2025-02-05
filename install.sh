#!/bin/bash

unzip -q Frapoppe-themes.zip; rm Frapoppe-themes.zip; cd Frapoppe-themes/

PS3="Select your model of choice: "

select model in Interstellar Cosmic Classic
do
	case $model in
		"Interstellar")
			sudo cp -r Interstellar/* ~/.themes
			break;;
		"Cosmic")
			sudo cp -r Cosmic/* ~/.themes
			break;;
		"Classic")
			sudo cp -r Classic/* ~/.themes
			break;;
		*)
			echo "Invalid option. Retrying...";;
	esac
done

PS3="Select your distro for installation of GNOME-Tweaks (ONLY FOR GNOME DESKTOP USERS, TYPE '5' FOR NON-GNOME DESKTOP USERS): "

select os in deb arch rhel suse quit
do
	case $os in
		"deb")
			sudo apt install gnome-tweaks
			break;;
		"arch")
			sudo pacman -S gnome-tweaks
			break;;
		"rhel")
			sudo dnf install gnome-tweaks
			break;;
		"suse")
			sudo zypper install gnome-tweaks
			break;;
		"quit")
  			exit 0;;
		*)
			echo "Invalid option. Retrying...";;
	esac
done
