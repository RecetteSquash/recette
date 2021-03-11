# Automation priority: 70
# Test case importance: Low
# language: en
Feature: Vérifier les produits disponibles 7

	Scenario: Vérifier les produits disponibles 7
		Given la machine est en marche.
			| mode| luminosité |
			| Éco| faible |
			| Normal| normal |
			| Full| intense|
		When je liste les produits disponibles.
			| type| produit|
			| café| expresso |
			| café| double|
			| autre| thé|
			| autre| potage|
			#Seuls les produits de la catégorie Café sont vérifiés dans ce test
		Then je constate que tous les produits suivants sont disponibles :
			 | produit            | prix |
			 | Expresso        | 0.40  |
			 | Lungo              | 0.50  |
			 | Cappuccino    | 0.80  |
			"""
			le prix des produits s'affiche à droite sur l'écran et le nom des produits à gauche
			"""