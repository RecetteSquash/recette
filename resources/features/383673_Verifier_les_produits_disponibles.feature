# language: en
Feature: Vérifier les produits disponibles

	Scenario: Vérifier les produits disponibles
		Given la machine est en marche.
		When je liste les produits disponibles
		Then je constate que tous les produits suivant sont disponibles : expresso, lungo, cappucino