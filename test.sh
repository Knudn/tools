apt update
apt install bc
git clone https://github.com/aircrack-ng/rtl8188eus.git
cd rtl8188eus
echo "blacklist r8188eu" > "/etc/modprobe.d/realtek.conf"
make && make install
rmmod 8188eu
modprobe 8188eu
reboot
