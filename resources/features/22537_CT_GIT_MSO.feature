# Automation priority: 10
# Test case importance: Very high
# language: en
Feature: CT_GIT_MSO

	Scenario: CT_GIT_MSO
		Given The machine is en marche.
		When je read les products dipo.
		Then je constate que tous produits suivants sont dispo :
			| produit | prix |
			| Expresso | 0.40 |
			| Lungo | 0.50 |
			| Cappuccino | 0.80 |