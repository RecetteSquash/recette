# Automation priority: 50
# Test case importance: High
# language: en
Feature: Vérifier la livraison des produits 2

	Scenario: Vérifier la livraison des produits 2
		Given la machine est en marche.
		When When je sélectionne le "lungo".
		Then Then la machine me sert un "lungo" et mon compte est débité de 0.50 "€".