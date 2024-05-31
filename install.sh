#!/bin/bash

sudo unzip -q Frapoppe-theme.zip -d /usr/share/themes/

PS3="Select your distro: "

select os in deb arch rhel suse
do
    case $os in
        "deb")
          sudo apt install gnome-tweaks;;
        "arch")
          sudo pacman -S gnome-tweaks;;
        "rhel")
          sudo dnf install gnome-tweaks;;
        "suse")
          sudo zypper install gnome-tweaks;;
        *)
          echo "Invalid option. Retrying..."
    esac
done
