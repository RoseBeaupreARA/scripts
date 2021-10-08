# Enable running 32-bit apps
```
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 -y
```

# Apps
```
sudo apt-get install -y \
    filezilla \
    wine-stable \
    speedcrunch \
    htop \
    virtualbox \
    imagemagick \
    lcov \
    ccache \
    ninja-build \
    cmake \
    git-lfs \
    libx11-dev \
    libusb-1.0.0-dev \
    xorg-dev \
    libglu1-mesa-dev \
    freeglut3-dev \
    libudev-dev \
    awesome \
    xclip \
    numlockx \
    python3 \
    python3-pip \
    wireshark \
    docker.io

pip3 install crccheck pyusb tqdm pandas

sudo snap install clion --classic --edge
```

# VS Code
```
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y
sudo update-alternatives --set editor /usr/bin/code
```

# Gitkraken
```
sudo apt-get install -y gconf-service gconf2
sudo apt --fix-broken install -y
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb -O /tmp/gitkraken.deb
sudo dpkg -i /tmp/gitkraken.deb
sudo apt-get install -f -y
echo fs.inotify.max_user_watches=9999999 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

# Allow docker without sudo
```
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

# Allow wireshark to capture without sudo
```
sudo usermod -a -G wireshark $USER
newgrp wireshark
sudo dpkg-reconfigure wireshark-common
```

# Stop Linux from breaking Windows Clock
```
timedatectl set-local-rtc 1
```

# Allow access to USB devices
```
echo 'SUBSYSTEM=="usb", MODE="0660", GROUP="plugdev"' | sudo tee /etc/udev/rules.d/00-usb-permissions.rules
sudo udevadm control --reload-rules
sudo usermod -a -G plugdev $USER
```

# Eenable sudo without password
```
sudo visudo
```

Add this to the bottom, replace $USER with your username
```
$USER ALL=NOPASSWD: ALL
```

# Enable ctrl-backspace in console
Add this in ~/.inputrc
```
"\C-H": backward-kill-word
"\e[1;5C": forward-word
"\e[1;5D": backward-word
"\e[5C": forward-word
"\e[5D": backward-word
"\e\e[C": forward-word
"\e\e[D": backward-word
"\e[3;5~": kill-word
```

# Disable DPI scaling
```
echo Xft.dpi:96 > ~/.Xresources
```
