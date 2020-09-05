#!/bin/bash

clear
sleep "2"
echo "== SCRIPT DE WORLD-TECK STUDIO == "
echo "== YOUTUBE: world-teck STUDIO =="
echo "== TWITCH: WorldTeck_studio_ =="
echo "== Version du script 1.0 AUTOMATIQUE =="
sleep "6"
clear

# ------------------------------------------------------------

echo "Demarrage AUTOMATIQUE de GOOGLE HOME"
sleep "4"
clear

nano /home/pi/ScriptGoogleRPI/start_assistant.sh

# ------------------------------------------------------------

echo "Demarrage des service "
sleep "4"
clear

cd /home/pi/ScriptGoogleRPI/
mv assistant.service /lib/systemd/system/
cd /home/pi

sudo systemctl enable assistant.service
sudo systemctl start assistant.service
clear

# ------------------------------------------------------------

confirm() { read -r -p "${1} [y/N] " response

case "$response" in
[yY][eE][sS]|[yY])
true
;;
*)
false
;;
esac

}

if confirm "Vous les vous redemmarer le raspberry (Y) ou Tester un talk Google (N)?"; then

clear echo "Le script est terminer"
sleep "2"
clear

echo "Merci d'avoir suivit le tuto..."

sleep "4"

clear
sudo Reboot

else

clear 
echo "Le script est terminer"
sleep "2"
clear

# ------------------------------------------------------------

echo "Merci d'avoir suivit le tuto..."
sleep "4"
clear
echo "Copier coller le code : googlesamples-assistant-pushtotalk "
sleep "4"
fi
