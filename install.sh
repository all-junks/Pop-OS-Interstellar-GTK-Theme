#!/bin/bash

git clone https://github.com/all-junks/Frapoppe.git; cd Frapoppe; mv Frapoppe-theme.zip Pop-OS-Interstellar-Theme/; cd ..; unzip -q '*.zip'; rm -f *.zip; sudo mv Icons/Zafiro-Nord-Black-Blue /usr/share/icons/; sudo mv Fonts/JetBrainsMono-2.304 /usr/share/fonts/; sudo mv Cursors/Catppuccin-Frappe-Light-Cursors /usr/share/icons/; cd Frapoppe-theme; ./install.sh

PS3="Select your distro: "

select opt in deb arch rhel solus suse
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
        "solus")
            sudo eopkg install plank
            sudo eopkg upgrade
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
