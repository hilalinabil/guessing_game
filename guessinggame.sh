#!/usr/bin/env bash
# guessinggame.sh

# Fonction pour vérifier la réponse
check_guess() {
    local guess=$1
    local correct_answer=$2
    
    if [[ $guess -lt $correct_answer ]]; then
        echo "Trop bas ! Essaie encore."
    elif [[ $guess -gt $correct_answer ]]; then
        echo "Trop haut ! Essaie encore."
    else
        echo "Félicitations ! Tu as deviné le bon nombre de fichiers."
        exit 0
    fi
}

# Boucle principale
echo "Bienvenue dans le jeu de devinette !"
echo "Combien de fichiers y a-t-il dans le répertoire actuel ?"
correct_answer=$(ls | wc -l)  # Récupère le nombre de fichiers

while true; do
    read -p "Entrez votre devinette : " user_guess
    check_guess $user_guess $correct_answer
done

