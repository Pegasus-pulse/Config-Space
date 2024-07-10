#!/bin/sh

# Create folders in user directory(Downloads,Documents,etc)
xdg-user-dirs-update
mkdir ~/Screenshots

# Essential Packages
printf "\e[1;32mInstalling Dependencies...\e[0m\n"
sudo apt install -y build-essential cmake cmake-extras curl wget gettext libnotify-bin meson ninja-build libxcb-util0-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-cursor-dev libxcb-xinerama0-dev libstartup-notification0-dev

# Terminal
printf "\e[1;32mInstalling kitty terminal...\e[0m\n"
sudo apt install -y kitty

# Sway Installation
printf "\e[1;32mInstalling Sway...\e[0m\n"
sudo apt install -y sway waybar swaylock swayidle swaybg

# Wayland protocols library
printf "\e[1;32mInstalling wayland protocols library...\e[0m\n"
sudo apt install -y wayland-protocols

# App launcher (rofi wayland-fork)
printf "\e[1;32mInstalling rofi-wayland...\e[0m\n"
bash ~/sway/builds/rofi-wayland

# Nwg-look lxappearance for wayland
printf "\e[1;32mInstalling nwg-look...\e[0m\n"
bash ~/sway/builds/nwg-look

# Screenshots in Wayland
printf "\e[1;32mInstalling screenshot-tools...\e[0m\n"
sudo apt install -y grim slurp

# Thunar (GUI File manager)
printf "\e[1;32mInstalling thunar...\e[0m\n"
sudo apt install -y thunar thunar-volman xarchiver

# Browser
printf "\e[1;32mInstalling firefox...\e[0m\n"
#sudo apt install -y firefox-esr
sudo apt install -y firefox

# Network File Tools/System Events
printf "\e[1;32mInstalling network/system-tools...\e[0m\n"
sudo apt install -y dialog avahi-daemon acpi acpid gvfs-backends
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid
# Notifications
sudo apt install -y mako-notifier libnotify-dev xdotool

# Audio/Sound
printf "\e[1;32mInstalling multimedia...\e[0m\n"
sudo apt install -y pipewire pavucontrol pamixer
# Multimedia
sudo apt install -y mpv mpv-mpris ffmpeg qimgv mkvtoolnix-gui
#sudo apt install -y gimp obs-studio

# Screen Brithness/Night mode
printf "\e[1;32mInstalling screen-tools(Brithness/Night mode)...\e[0m\n"
sudo apt install -y light brightnessctl redshift

# Text editor
printf "\e[1;32mInstalling text editor(s)...\e[0m\n"
#sudo apt install -y gedit
sudo apt install -y neovim

# Printing
printf "\e[1;32mInstalling printing-tools...\e[0m\n"
sudo apt install -y cups system-config-printer
sudo systemctl enable cups

# PDF
printf "\e[1;32mInstalling pdf-viewer...\e[0m\n"
sudo apt install -y evince

printf "\e[1;32mCleaning...\e[0m\n"
sudo apt autoremove

printf "\e[1;34mInstallation finished! Happy Linux\e[0m\n"
printf "\e[1;34mRebooting is recommended\e[0m\n"