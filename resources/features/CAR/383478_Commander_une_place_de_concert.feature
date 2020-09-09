# Automation priority: null
# Test case importance: Low
# language: en
Feature: Commander une place de concert

	Scenario: Commander une place de concert
		Given je suis une utilisateur connecté
		And mon solde est de 30 euros
		When je mets dans mon panier d'achat un billet de concert au prix de 25 euros
		Then un message confirme la transaction
		And je peux consulter mon billet dans la rubrique achat