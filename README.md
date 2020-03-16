# Pull this repo
```
mkdir ~/install
cd ~/install
sudo apt-get install git; git clone https://github.com/remibeaupreara/ubuntu-setup.git

echo Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

echo openocd
sudo apt-get install -y libtool pkg-config automake autoconf
git clone https://git.code.sf.net/p/openocd/code openocd-code
cd openocd-code
./bootstrap
./configure
make -j24
sudo make install
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="3748", MODE="0666"' | sudo tee -a /etc/udev/rules.d/51-openocd.rules
sudo udevadm control --reload-rules
sudo udevadm trigger
cd ~/install

echo filezilla
sudo apt-get install filezilla

echo Wine
sudo apt-get install wine-stable -y

echo GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo apt-get install -f -y
rm gitkraken-amd64.deb
echo fs.inotify.max_user_watches=9999999 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

echo arm-none-eabi-gcc
sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa -y
sudo apt-get update
sudo apt-get install cmake git gcc-arm-embedded -y

echo VS Code
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y
sudo update-alternatives --set editor /usr/bin/code

echo Wireshark
sudo apt-get install wireshark -y
sudo dpkg-reconfigure wireshark-common 
sudo usermod -a -G wireshark $USER
newgrp wireshark

echo lcov
sudo apt-get install -y lcov

echo awesome-wm
sudo apt-get install awesome -y
mkdir -p ~/.config/awesome
cp ubuntu-setup/themes ~/.config/awesome -r
cp ubuntu-setup/rc.lua ~/.config/awesome
sudo apt-get install xclip -y
sudo apt-get install -y numlockx
sudo apt-get install unclutter -y

echo allow 32 bit executables to run
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386

echo python things
sudo apt-get install python-pip -y
pip install crccheck pyusb tqdm pandas

echo speedcrunch
sudo apt-get install speedcrunch -y

echo enable crtl-arrows in console
echo "\"\\C-H\": backward-kill-word" > ~/.inputrc
echo "\"\\e[1;5C\": forward-word" >> ~/.inputrc
echo "\"\\e[1;5D\": backward-word" >> ~/.inputrc
echo "\"\\e[5C\": forward-word" >> ~/.inputrc
echo "\"\\e[5D\": backward-word" >> ~/.inputrc
echo "\"\\e\\e[C\": forward-word" >> ~/.inputrc
echo "\"\\e\\e[D\": backward-word" >> ~/.inputrc
echo "\"\\e[3;5~\": kill-word" >> ~/.inputrc

echo Consolas font
mkdir ~/.fonts
cp ubuntu-setup/Consolas.ttf ~/.fonts/
fc-cache -f -v

echo Stop Linux from breaking Windows Clock
timedatectl set-local-rtc 1

echo Dev libraries
sudo apt-get install libx11-dev -y
sudo apt-get install libusb-1.0.0-dev -y
sudo apt-get install xorg-dev -y
sudo apt-get install libglu1-mesa-dev -y
sudo apt-get install freeglut3-dev -y

echo htop
sudo apt-get install htop -y

echo slack
sudo snap install slack --classic

echo USB permissions for SKYMATE devices
sudo rm /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5748", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5750", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5770", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5771", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5760", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="a12a", ATTR{idProduct}=="5761", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="0483", ATTR{idProduct}=="5749", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo echo 'KERNEL=="hidraw*", SUBSYSTEM=="hidraw", MODE="0664", GROUP="plugdev"' | sudo tee -a /etc/udev/rules.d/50-usb-ara.rules
sudo udevadm control --reload-rules
sudo udevadm trigger

echo SkyControl dev environment
curl -sL https://deb.nodesource.com/setup_10.x > install_node.sh
sudo sh install_node.sh
rm install_node.sh
sudo apt-get install nodejs -y
sudo apt-get install libudev-dev -y
sudo rm /bin/skycontrol.sh
sudo echo "cd ~/git/skycontrol-react; sh start.sh" | sudo tee -a /bin/skycontrol.sh
sudo chmod +x /bin/skycontrol.sh

echo System workbench
wget http://www.ac6-tools.com/downloads/SW4STM32/install_sw4stm32_linux_64bits-latest.run --no-check-certificate
chmod +x install_sw4stm32_linux_64bits-latest.run
./install_sw4stm32_linux_64bits-latest.run -c
rm install_sw4stm32_linux_64bits-latest.run
echo "PATH=\"\$HOME/Ac6/SystemWorkbench:\$PATH\"" >> .profile
source .profile

echo Logic
cd ~
wget http://downloads.saleae.com/logic/1.2.29/Logic+1.2.29+(64-bit).zip
unzip 'Logic+1.2.29+(64-bit).zip'
rm 'Logic+1.2.29+(64-bit).zip'
sudo rm /bin/logic.sh
sudo echo "~/Logic\ 1.2.29\ \(64-bit\)/Logic" | sudo tee -a /bin/logic.sh
sudo chmod +x /bin/logic.sh
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="21a9", ATTR{idProduct}=="1004", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-logic.rules
sudo udevadm control --reload-rules && udevadm trigger

echo CLion
wget https://download.jetbrains.com/cpp/CLion-2019.2.3.tar.gz
sudo tar xvzf CLion-*.tar.gz -C /opt/
rm CLion-*.tar.gz
echo "PATH=\"/opt/clion-2019.2.3/bin:\$PATH\"" >> .profile
source .profile

echo perf things
sudo apt-get install linux-tools-common linux-tools-generic linux-tools-`uname -r` -y
sudo sh -c 'echo kernel.perf_event_paranoid=1 >> /etc/sysctl.d/99-perf.conf'
sudo sh -c 'echo kernel.kptr_restrict=0 >> /etc/sysctl.d/99-perf.conf'
sudo sh -c 'sysctl --system'

echo octave
sudo apt-get install octave -m
octave --eval "pkg install -forge symbolic"
code --install-extension paulosilva.vsc-octave-debugger
pip3 install SymPy

echo "pkg load symbolic" | sudo tee -a /usr/share/octave/site/m/startup/octaverc
echo "sympref quiet on" | sudo tee -a /usr/share/octave/site/m/startup/octaverc
```

Caps lock as backspace in Colemak will not work:
```
Ctrl-,
Set "keyboard.dispatch": "keyCode"
```

# System workbench
Debugging won't work http://www.openstm32.org/forumthread3279
```
Run->Debug Configurations->Debugger 
There I’ve changed the GDB command from “${openstm32_compiler_path}/arm-none-eabi-gdb” to “/usr/bin/arm-none-eabi-gdb”
```

# STM32CubeMX
Version 5.2 didn't work, 5.1 did
The binary is 32 bits, see https://askubuntu.com/questions/133389/no-such-file-or-directory-but-the-file-exists

```
sudo apt-get install default-jre -y
google-chrome https://my.st.com/content/my_st_com/en/products/development-tools/software-development-tools/stm32-software-development-tools/stm32-configurators-and-code-generators/stm32cubemx.html
read -rsp $'Download en.STM32CubeMX_v5-1-0.zip, then Press any key to continue...\n' -n1 key
mkdir STM32CubeMXSetup
unzip en.STM32CubeMX_v5-1-0.zip -d STM32CubeMXSetup
STM32CubeMXSetup/SetupSTM32CubeMX-5.1.0.linux
rm en.STM32CubeMX_v5-1-0.zip
rm -rf STM32CubeMXSetup
sudo rm /bin/stm32cubemx.sh
sudo echo "~/STM32CubeMX/STM32CubeMX" | sudo tee -a /bin/stm32cubemx.sh
sudo chmod +x /bin/stm32cubemx.sh
```

 # Awesome WM
To enable, click the gear before logging in

# CLion settings
* Lines Sorter

## Clion keybings

Function | Keybind
--- | ---
Find usages | F4
Rename | F2
Increase Font size | Ctrl + Numpad+
Decraese Font size | Ctrl + Numpad-
Reset Font Size | Ctrl + Numpad0
Select Run/Debug Configuration | Alt + Shift + H
Replace in Path | Ctrl + Shift + H
Related Symbol | Ctrl + Tab


# Knowledge base
* .profile has environment variables 
* .bashrc has aliases
* .initrc has remapping keybinds for the console
