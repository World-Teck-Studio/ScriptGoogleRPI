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

echo "Merci d'avoir suivit le tuto..."
sleep "4"
echo ".............................."
sleep "1"
echo "Copier coller le code : googlesamples-assistant-pushtotalk --project-id IDPROJECT --device-model-id VOTREID"
sleep "1"
echo "..............................--"
sleep "1"
echo "Copier coller le code : sudo reboot"
sleep "1"
echo "..............................--"
sleep "4"
fi
