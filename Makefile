# Makefile

# Cible pour générer le fichier README
README.md: guessinggame.sh
	@echo "# Jeu de Devinette" > README.md
	@echo "Date et heure de la dernière exécution de make : $(shell date)" >> README.md
	@echo "Nombre de lignes dans guessinggame.sh : $(shell wc -l < guessinggame.sh)" >> README.md

# Cible pour s'assurer que guessinggame.sh est bien créé
guessinggame.sh:
	@echo "Assurez-vous que guessinggame.sh est bien écrit et enregistré."

# Nettoyage des fichiers générés
clean:
	rm -f README.md

