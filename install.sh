echo "********************** Performing update ************************"
apt-get update
echo "******************* Installing XFCE4 environment *************"
apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies
apt-get install lightdm
dpkg-reconfigure lightdm
echo "********************** Installing Vino ************************"
apt-get -y install vino
gsettings set org.gnome.Vino prompt-enabled false
gsettings set org.gnome.Vino require-encryption false
echo "VNC server setup done"

mkdir /root/.config/autostart 
echo "will be fixed after reboot"
echo " "
echo "******************* Installing Wifite*************"
apt-get install wifite 
echo " "
echo "**********************Making autorun VNC script************************"
echo "[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=VINO
Comment=
Exec=/usr/lib/vino/vino-server
StartupNotify=false
Terminal=false
Hidden=false" > /root/.config/autostart/vino.desktop

echo "VNC autorun on startup done"

echo "****************Enabling autologin***************"

mv /etc/lightdm/lightdm.conf  /etc/lightdm/lightdm.conf.bak
mv /etc/pam.d/lightdm-autologin  /etc/pam.d/lightdm-autologin.bak
cp lightdm.conf /etc/lightdm/lightdm.conf
cp lightdm-autologin /etc/pam.d/lightdm-autologin

echo "setting up interafces file"

mv /etc/network/interfaces /etc/network/interfaces.bak
echo " "
echo "Your Current network configuration backed up as /etc/network/interfaces.bak file"
cp interfaces /etc/network/interfaces
echo "END of Script... Thanks for using it"
echo " "
echo "Please Subscribe: https://YouTube.com/PNPtutorials"

echo "Follow us on all Social Media Websites 
➤ GooglePlus ➤ https://www.plus.google.com/+PNPtutorials
➤ Twitter    ➤ https://www.twitter.com/PNPtutorials
➤ Instagram  ➤ https://www.instagram.com/PNPtutorialsOfficial
➤ Facebook   ➤ https://www.facebook.com/PNPtutorials
➤ Plz Donate ➤ https://www.paypal.me/PNPtutorials"
