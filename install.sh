#!/bin/bash

sudo unzip -q Frapoppe-theme.zip -d /usr/share/themes/

PS3="Select your desktop env.: "

select de in gnome other
do
    case $de in 
        "gnome")
            echo "Continuing..."
            break;;
        "other")
            exit 0
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
            echo "Invalid option. Retrying..."
    esac
done
