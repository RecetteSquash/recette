# Automation priority: 10
# Test case importance: Very high
# language: en
Feature: CT_GIT_MSO

	Scenario: CT_GIT_MSO
		Given The machine is en marche.
			| produit | prix |
			| @ù | 0.1 |
			| zz  | 0.2 |
		When je read les products dipo.
			| produit | prix |
			| livre | 10 |
			| bouquin | 11 |
		Then je constate que tous produits suivants sont dispo :
			| produit | prix |
			| Expresso | 0.40 |
			| Lungo | 0.50 |
			| Cappuccino | 0.80 |