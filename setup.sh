echo "Installing system!"

sudo apt update -yqq && sudo apt upgrade -y

# install git
sudo apt install git -y

# Picom install
cd /tmp/
git clone https://github.com/ibhagwan/picom.git
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
sudo ninja -C build install

# Polybar Install
git clone https://github.com/stark/siji && cd siji
./install.sh
cd $HOME/Downloads
git clone --recursive https://github.com/polybar/polybar
cd $HOME/Downloads/polybar
mkdir build && cd build
cmake ..
make -j$(nproc)
sudo make install

# i3 install
sudo apt install -y i3

# install chezmoi and apply dotfiles
sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply james-burgess

# clone scripts into folder
mkdir -p $HOME/scripts
cd $HOME
git clone git@github.com:James-Burgess/scripts.git ./scripts

