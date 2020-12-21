# Automation priority: null
# Test case importance: Low
# language: en
Feature: CT_BDD2

	Scenario: CT_BDD2
		Given je suis sur la page d'accueil
		When je clique sur "mon_compte"
		Then j'accède à <mon_compte>