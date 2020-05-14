# Pull this repo
```
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

echo perf things
sudo apt-get install linux-tools-common linux-tools-generic linux-tools-`uname -r` -y
sudo sh -c 'echo kernel.perf_event_paranoid=1 >> /etc/sysctl.d/99-perf.conf'
sudo sh -c 'echo kernel.kptr_restrict=0 >> /etc/sysctl.d/99-perf.conf'
sudo sh -c 'sysctl --system'
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

# Disable DPI scaling
```
echo Xft.dpi:96 > ~/.Xresources
```
