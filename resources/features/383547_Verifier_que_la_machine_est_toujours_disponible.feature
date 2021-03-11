# Automation priority: 25
# Test case importance: Very high
# language: en
Feature: Vérifier que la machine est toujours disponible

	Scenario: Vérifier que la machine est toujours disponible
		Given la machine est allumée
		When je liste les produits disponibles
		Then je constate que tous les produits suivants sont disponibles : expresso, lungo, cappuccino