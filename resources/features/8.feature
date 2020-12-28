# Automation priority: null
# Test case importance: Low
# language: en
Feature: Vérifier les produits disponibles.

	Scenario: Vérifier les produits disponibles.
		Given la machine est "branchée"
		When je liste les produits disponibles.
		Then je constate que tous les produits suivants sont disponibles :
			| produit			| prix  |
			| Expresso		| 0.40  |
			| Lungo				| 0.50  |
			| Cappuccino	| 0.80  |