# Chrome
```
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
```
# Gitkraken
```
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
sudo apt-get install -f -y
rm gitkraken-amd64.deb
echo fs.inotify.max_user_watches=99999 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```
# arm-none-eabi-gcc
```
sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa -y
sudo apt-get update
sudo apt-get install cmake git gcc-arm-embedded -y
```
# VS code
```
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y
sudo update-alternatives --set editor /usr/bin/code
```
Caps lock as backspace in Colemak will not work:
```
Ctrl-,
Set "keyboard.dispatch": "keyCode"
```
# CLion
```
wget https://download.jetbrains.com/cpp/CLion-2019.1.3.tar.gz
sudo tar xvzf CLion-*.tar.gz -C /opt/
rm CLion-*.tar.gz
echo "PATH=\"/opt/clion-2019.1.3/bin:\$PATH\"" >> .profile
source .profile
```
# Wireshark
```
sudo apt-get install wireshark -y
```
# System workbench
```
wget http://www.ac6-tools.com/downloads/SW4STM32/install_sw4stm32_linux_64bits-latest.run
chmod +x install_sw4stm32_linux_64bits-latest.run
./install_sw4stm32_linux_64bits-latest.run -c
rm install_sw4stm32_linux_64bits-latest.run
echo "PATH=\"\$HOME/Ac6/SystemWorkbench:\$PATH\"" >> .profile
source .profile
```
Debugging won't work http://www.openstm32.org/forumthread3279

```
Run->Debug Configurations->Debugger 
There I’ve changed the GDB command from “${openstm32_compiler_path}/arm-none-eabi-gdb” to “/usr/bin/arm-none-eabi-gdb”
```

# STM32CubeMX
Version 5.2 didn't work, 5.1 did
The binary is 32 bits, see https://askubuntu.com/questions/133389/no-such-file-or-directory-but-the-file-exists
```
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386
```

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
# Logic Beta
```
cd ~
wget http://downloads.saleae.com/logic/1.2.29/Logic+1.2.29+(64-bit).zip
unzip 'Logic+1.2.29+(64-bit).zip'
rm 'Logic+1.2.29+(64-bit).zip'
sudo rm /bin/logic.sh
sudo chmod +x /bin/logic.sh
sudo echo 'SUBSYSTEM=="usb", ATTR{idVendor}=="21a9", ATTR{idProduct}=="1004", MODE="0666"' | sudo tee -a /etc/udev/rules.d/50-logic.rules
sudo udevadm control --reload-rules && udevadm trigger
```


 # Awesome WM
```
sudo apt-get install awesome -y
mkdir -p ~/.config/awesome
cp themes ~/.config/awesome -r
cp rc.lua ~/.config/awesome
sudo apt-get install xclip -y
```
To enable, click the gear before logging in
# Unclutter
```
sudo apt-get install unclutter -y
```

# Slack
```
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.4.0-amd64.deb
sudo dpkg -i slack-desktop-3.4.0-amd64.deb
sudo apt-get install -f -y
rm slack-desktop*
```

# git
```
sudo apt-get install git -y
```

# Python things
```
sudo apt-get install python-pip -y
pip install crccheck pyusb tqdm
```

# Speecrunch
```
sudo apt-get install speedcrunch -y
```

# Enable ctrl-backspace, delete, arrow keys in console
```
echo "\"\\C-H\": backward-kill-word" > ~/.inputrc
echo "\"\\e[1;5C\": forward-word" >> ~/.inputrc
echo "\"\\e[1;5D\": backward-word" >> ~/.inputrc
echo "\"\\e[5C\": forward-word" >> ~/.inputrc
echo "\"\\e[5D\": backward-word" >> ~/.inputrc
echo "\"\\e\\e[C\": forward-word" >> ~/.inputrc
echo "\"\\e\\e[D\": backward-word" >> ~/.inputrc
echo "\"\\e[3;5~\": kill-word" >> ~/.inputrc
```

# Add Consolas font
```
mkdir ~/.fonts
cp Consolas.ttf ~/.fonts/
fc-cache -f -v
```

# Stop Linux from breaking Windows' Clock
```
timedatectl set-local-rtc 1
```

# Dev libraries for SKYMATE viewer
```
sudo apt-get install libx11-dev -y
sudo apt-get install libusb-1.0.0-dev -y
sudo apt-get install xorg-dev -y
sudo apt-get install libglu1-mesa-dev -y
```

# htop
```
sudo apt-get install htop -y
```

# SkyControl
```
curl -sL https://deb.nodesource.com/setup_10.x > install_node.sh
sudo sh install_node.sh
rm install_node.sh
sudo apt-get install nodejs -y
sudo apt-get install libudev-dev -y
sudo echo "cd ~/git/skycontrol-react; sh start.sh" | sudo tee -a /bin/skycontrol.sh
sudo chmod +x /bin/skycontrol.sh
```


# CLion settings
* Lines Sorter

## Clion keybings
* Find usages -> F4
* Rename -> F2
* Increase Font size -> Ctrl + Numpad+
* Decraese Font size -> Ctrl + Numpad-
* Reset Font Size -> Ctrl + Numpad0

# USB permissions for autopilot
```
sudo cp 50-usb-ara.rules /etc/udev/rules.d/
```

# Knowledge base
* .profile has environment variables 
* .bashrc has aliases
* .initrc has remapping keybinds for the console
