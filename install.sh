#!/bin/bash

git clone https://github.com/all-junks/Frapoppe.git; unzip -q '*.zip'; rm -f *.zip; sudo cp -r Icons/Zafiro-Nord-Black-Blue /usr/share/icons/; sudo cp -r Fonts/JetBrainsMono-2.304 /usr/share/fonts/; sudo cp -r Cursors/Catppuccin-Frappe-Light-Cursors /usr/share/icons/; cd Frapoppe-themes; chmod 755 install.sh; chmod +x install.sh; ./install.sh

PS3="Select your distro: "

select opt in deb arch rhel suse
do
    case $opt in
        "deb")
            sudo apt install plank
            sudo apt update
            sudo apt upgrade
            break;;
        "arch")
            sudo pacman -S plank
            sudo pacman -Syu
            break;;
        "rhel")
            sudo dnf install plank plank-docklets
            sudo dnf update
            break;;
        "suse")
            sudo zypper install plank
            sudo zypper refresh
            sudo zypper update
            break;;
        *)
            echo Invalid option, retrying... ;;
    esac
done
