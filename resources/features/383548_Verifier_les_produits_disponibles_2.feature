# Automation priority: 30
# Test case importance: Medium
# language: en
Feature: Vérifier les produits disponibles/2

	Scenario: Vérifier les produits disponibles/2
		Given la machine est en marche.
			"""
			Le message "Choisissez votre produit" apparaît.
			"""
			#La mise en forme du texte est définie ici.
			#
			#Selon le badge passé, la mise en forme est différente
		When je liste les produits disponibles
			"""
			La mention "Non disponible" s'affiche sous les produits indisponibles.
			
			La mention "Bientôt indisponible" s'affiche sous les produits dont les quantités sont faibles.
			
			La mention 'Disponible" s'affiche sous les produits dont les quantités sont suffisantes.
			"""
			#Seuls les produits de la catégorie Café sont vérifiés dans ce test.
		Then je constate que tous les produits suivants sont disponibles :
			"""
			le prix des produits s'affiche à droite sur l'écran et le nom des produits à gauche
			"""