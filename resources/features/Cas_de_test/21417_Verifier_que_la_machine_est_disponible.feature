# Automation priority: null
# Test case importance: Very high
# language: en
Feature: Vérifier que la machine est disponible

	Scenario: Vérifier que la machine est disponible
		Given la machine est branchée
		When je passe mon badge
		And je sélectionne le <produit> et j'appuie sur ok
		Given je fais un "test"