# Automation priority: 30
# Test case importance: Medium
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
Vérifier les produits disponibles/2
	${docstring_1} =	Set Variable	Le message "Choisissez votre produit" apparaît.
	${docstring_2} =	Set Variable	La mention "Non disponible" s'affiche sous les produits indisponibles.\n\nLa mention "Bientôt indisponible" s'affiche sous les produits dont les quantités sont faibles.\n\nLa mention 'Disponible" s'affiche sous les produits dont les quantités sont suffisantes.
	${docstring_3} =	Set Variable	le prix des produits s'affiche à droite sur l'écran et le nom des produits à gauche

	Given la machine est en marche. "${docstring_1}"
	# La mise en forme du texte est définie ici.
	# 
	# Selon le badge passé, la mise en forme est différente
	When je liste les produits disponibles "${docstring_2}"
	# Seuls les produits de la catégorie Café sont vérifiés dans ce test.
	Then je constate que tous les produits suivants sont disponibles : "${docstring_3}"