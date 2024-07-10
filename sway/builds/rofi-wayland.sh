#!/usr/bin/env bash

sudo apt install -y bison flex libcairo2-dev libpango1.0-dev wayland-protocols libwayland-dev

cd ~/Downloads
git clone https://github.com/lbonn/rofi.git
cd rofi
meson setup build && ninja -C build
sudo ninja -C build install

cd ..
rm -rf rofi