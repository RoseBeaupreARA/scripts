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