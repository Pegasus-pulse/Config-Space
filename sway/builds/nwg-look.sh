#!/usr/bin/env bash

sudo apt install -y golang libgtk-3-dev libcairo2-dev libglib2.0-bin jq

cd ~/Downloads
LATEST_RELEASE=$(curl -s https://api.github.com/repos/nwg-piotr/nwg-look/releases/latest | jq -r '.tag_name')
wget https://github.com/nwg-piotr/nwg-look/archive/refs/tags/${LATEST_RELEASE}.zip -O nwg-look-latest.zip
unzip nwg-look-latest.zip
cd nwg-look-${LATEST_RELEASE#v}
make build
sudo make install

cd ..
rm -rf nwg-look-${LATEST_RELEASE#v}
rm -rf nwg-look-latest.zip