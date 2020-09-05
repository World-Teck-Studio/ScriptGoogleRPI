#!/bin/bash
cd
clear
sleep "2"
echo "== SCRIPT DE WORLD-TECK STUDIO == "
echo "== YOUTUBE: world-teck STUDIO =="
echo "== TWITCH: WorldTeck_studio_ =="
echo "== Version du script 4.0 =="
sleep "6"
clear

# ------------------------------------------------------------
echo "Telechargement des fichier installation"
sleep "2"

sudo apt-get install git -y && git clone https://github.com/World-Teck-Studio/ScriptGoogleRPI.git
sleep"2"
cd /home/pi/ScriptGoogleRPI/
chmod +x ScriptGoogleWTS.sh && chmod +x start_assistant.sh
sleep"2"
clear

# ------------------------------------------------------------

echo "Verification de la mise à jour Raspbian"
sleep "2"
clear

echo "Mise e jour de Rasbian"
sleep "2"
sudo apt-get update && sudo apt-get upgrade -y
clear

echo "Mise a jour de Raspbian == TERMINER=="
sleep "2"
clear

# ------------------------------------------------------------

confirm()
{
    read -r -p "${1} [y/N] " response

    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

if confirm "Avez-vous brancher votre micro en USB?"; then

echo "configuration du micro USB."
sudo arecord -l
sleep "12"
clear

else

echo "Vous avez rencontrer un probleme ? Merci de patienter le script redemare."
sleep "2"  

sudo sh /home/pi/ScriptGoogleRPI/ScriptGoogleWTS.sh
sleep "4"  
fi


# ------------------------------------------------------------

echo "Configuration du Fichier son."
cd /home/pi/ScriptGoogleRPI/
mv .asoundrc /home/pi/
cd
sudo nano .asoundrc
clear
sleep"4"
echo "Configuration du Fichier son TERMINER."
sleep"3"
clear

# ------------------------------------------------------------

echo "Test de votre micro" 
sleep "4"
clear

echo "Test micro dans 5" 
sleep "1"
clear

echo "Test micro dans 4" 
sleep "1"
clear

echo "Test micro dans 3" 
sleep "1"
clear

echo "Test micro dans 2" 
sleep "1"
clear

echo "Test micro dans 1" 
sleep "1"
clear

echo "Parler pendant 5 secondes" 
sleep "1"
clear

arecord --format=S16_LE --duration=6 --rate=16000 --file-type=raw out.raw
Clear

echo "Enregistrement TERMINER" 
sleep "4"
clear

# ------------------------------------------------------------

echo "Ecoute de votre voix" 
sleep "4"
clear

echo "Ecoute de votre voix dans 3 seconde" 
sleep "1"
clear

echo "Ecoute de votre voix dans 2 seconde" 
sleep "1"
clear

echo "Ecoute de votre voix dans 1 seconde" 
sleep "1"
clear

echo "Ecoute en cours ..." 
sleep "1"
clear

aplay --format=S16_LE --rate=16000 out.raw

# ------------------------------------------------------------

confirm()
{
    read -r -p "${1} [y/N] " response

    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

if confirm "Avez-vous entendu votre voix?"; then

echo "Test du micro terminer"

sleep "2"
clear

else

echo "Vous avez rencontrer un probleme ? Merci de patienter le script redemare."
sleep "2"  

sudo sh /home/pi/ScriptGoogleRPI/ScriptGoogleWTS.sh

sleep "4"
fi

clear

# ------------------------------------------------------------


echo "Configuration de Google Home via Internet" 
sleep "3"

echo "Lien 1:" 
sleep "2"
echo "......................:" 
sleep "1"

echo "https://console.actions.google.com/" 
sleep "1"

echo "Lien 2:" 
sleep "2"

echo "......................:" 
sleep "1"

echo "https://console.developers.google.com/apis/api/embeddedassistant.googleapis.com/overview" 
sleep "3"



echo "Suivez les etapes de la vidéo avant de continuer" 
sleep "2"

confirm()
{
    read -r -p "${1} [y/N] " response

    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

if confirm "Avez-vous le fichier .JSON et la ligne de commande modifier?"; then

clear
echo "Installation de python3"
sleep "4"
clear

else

echo "Vous avez rencontrer un probleme ? Merci de patienter le script redemare."
sleep "2"  

sudo sh /home/pi/ScriptGoogleRPI/ScriptGoogleWTS.sh

sleep "4"
fi

# ------------------------------------------------------------

echo "Configuration de python3 P1" 
sleep "3"
sudo apt-get install python3-dev python3-venv -y

echo "Configuration de python3 P2" 
sleep "3"
python3 -m venv env

echo "Configuration de python3 P3" 
sleep "3"
env/bin/python -m pip install --upgrade pip setuptools wheel

echo "Configuration de python3 P4" 
sleep "3"
source env/bin/activate

echo "Configuration de python3 TERMINER" 
sleep "3"
clear

# ------------------------------------------------------------

echo "Installation de GOOGLE HOME" 
sleep "3"
clear

echo "Installation de GOOGLE HOME Partie 1" 
sleep "3"
clear
sudo apt-get install portaudio19-dev libffi-dev libssl-dev -y

echo "Installation de GOOGLE HOME Partie 2" 
sleep "3"
clear
python -m pip install --upgrade google-assistant-sdk[samples]

echo "Installation de GOOGLE HOME Partie 3" 
sleep "3"
clear
python -m pip install --upgrade google-auth-oauthlib[tool]

echo "Installation de GOOGLE HOME TERMINER" 
sleep "3"
clear

# ------------------------------------------------------------

echo "Demarrage AUTOMATIQUE de GOOGLE HOME" 
sleep "4"
clear

nano /home/pi/ScriptGoogleRPI/start_assistant.sh


echo "Demarrage des service " 
sleep "4"
clear

cd /home/pi/ScriptGoogleRPI/
mv assistant.service /lib/systemd/system/
cd

sudo systemctl enable assistant.service

sudo systemctl start assistant.service

clear



# ------------------------------------------------------------

confirm()
{
    read -r -p "${1} [y/N] " response

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


clear
echo "Le script est terminer"
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

echo "Merci d'avoir suivit le tuto..."
sleep "4"
clear

echo "Copier coller le code :  googlesamples-assistant-pushtotalk  "
sleep "4"
clear

fi

clear
