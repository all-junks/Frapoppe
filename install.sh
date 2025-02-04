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

PS3="Select your desktop env.: "

select de in GNOME Other
do
	case $de in 
		"GNOME")
			break;;
		"Other")
			exit 0;;
        *)
			echo "Invalid option. Retrying...";;
	esac
done

PS3="Select your distro: "

select os in deb arch rhel suse
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
		*)
			echo "Invalid option. Retrying...";;
	esac
done
