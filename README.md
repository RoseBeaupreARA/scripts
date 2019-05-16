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
```
# System workbench
```
wget http://www.ac6-tools.com/downloads/SW4STM32/install_sw4stm32_linux_64bits-latest.run
chmod +x install_sw4stm32_linux_64bits-latest.run
./install_sw4stm32_linux_64bits-latest.run -c
rm install_sw4stm32_linux_64bits-latest.run
echo "PATH=\"\$HOME/Ac6/SystemWorkbench:\$PATH\"" >> .profile
```
 # Awesome WM
```
sudo apt-get install awesome -y
mkdir -p ~/.config/awesome
cp themes ~/.config/awesome -r
cp rc.lua ~/.config/awesome
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
pip install crccheck
```

# Enable ctrl-backspace in console
```
echo "\"\\C-H\":\"\\C-W\"" > ~/.inputrc
```

# Add Consolas font
```
mkdir ~/.fonts
cp Consolas.ttf ~/.fonts/
fc-cache -f -v
```

# CLion settings
* Lines Sorter

## Clion keybings
* Find usages -> F4
* Rename -> F2
* Increase font size -> Ctrl + Numpad+
* Decraese font size -> Ctrl + Numpad-

# USB permissions for autopilot
```
sudo cp 50-usb-ara.rules /etc/udev/rules.d/
```

# Knowledge base
* Environment variables should be set in .profile
* Aliases should be set in .bashrc
