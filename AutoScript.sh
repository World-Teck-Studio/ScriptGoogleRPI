#!/bin/bash

clear
sleep "2"
echo "== SCRIPT DE WORLD-TECK STUDIO == "
echo "== YOUTUBE: world-teck STUDIO =="
echo "== TWITCH: WorldTeck_studio_ =="
echo "== Version du script 2.1 AUTOMATIQUE =="
sleep "6"
clear

# ------------------------------------------------------------

echo "Démarrage AUTOMATIQUE de GOOGLE HOME"
sleep "4"
clear

nano /home/pi/ScriptGoogleRPI/start_assistant.sh

# ------------------------------------------------------------

echo "Démarrage des services "
sleep "4"
clear

cd /home/pi/ScriptGoogleRPI/
mv assistant.service /lib/systemd/system/
cd /home/pi/
sleep "2"
clear

echo "Recherche du service"
sudo systemctl enable assistant.service
sleep "4"
clear

echo "Service Activer "
sudo systemctl start assistant.service
sleep "4"
clear

# ------------------------------------------------------------

echo "Merci d'avoir suivi le tuto..."
sleep "4"
echo ".............................."
sleep "1"
echo "Copier coller le code : googlesamples-assistant-pushtotalk --project-id IDPROJECT --device-model-id VOTREID"
sleep "1"
echo ".............................."
sleep "1"
echo "Copier coller le code : sudo reboot"
sleep "1"
echo ".............................."
sleep "4"
