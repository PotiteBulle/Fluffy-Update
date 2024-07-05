#!/bin/bash

# Vérification des privilèges sudo
if [ "$(id -u)" != "0" ]; then
    echo "Ce script doit être exécuté avec sudo ou en tant que root."
    exit 1
fi

# Exécution des commandes de mise à jour et de nettoyage
sudo apt update -y         # Met à jour la liste des paquets disponibles
sudo apt full-upgrade -y   # Effectue une mise à niveau complète du système
sudo apt autoremove -y     # Supprime les paquets devenus inutiles
sudo apt autoclean -y      # Supprime les fichiers inutiles des caches téléchargés

# Message de confirmation
echo "Les opérations de mise à jour et de nettoyage ont été effectuées avec succès."
