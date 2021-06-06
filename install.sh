#!/bin/sh
yay -S kdesu --noconfirm
mkdir /home/$USER/.10moonsDriver
cp -u 10moonsDriver/ -r /home/$USER/.10moonsDriver

echo "$(whoami)"
[ "$UID" -eq 0 ] || exec sudo "$0" "$@"
su $USER cp /home/$USER/.10moonsDriver/10moonsDriver/10moonDriver.desktop /usr/share/applications/
su $USER cp /home/$USER/.10moonsDriver/10moonsDriver/10moons-T503.svg /usr/share/icons/hicolor/scalable/apps/10moons-T503.svg
 
python -m pip install evdev pyusb pyaml
echo " "
echo "Application installed!"
echo "to run it, connect the 10moons-T503 tablet and run the application found in the menu."
echo "thanks!"
echo " "
