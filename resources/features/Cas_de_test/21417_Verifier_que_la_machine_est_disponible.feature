# Automation priority: null
# Test case importance: Very high
# language: en
Feature: Vérifier que la machine est disponible

	Scenario Outline: Vérifier que la machine est disponible
		Given la machine est branchée
		When je passe mon badge
		And je sélectionne le <produit> et j'appuie sur ok
		Given je fais un "test"

		@JDD_1
		Examples:
		| produit |
		| "café" |

		@JDD_2
		Examples:
		| produit |
		| "Thé" |

		@JDD_3
		Examples:
		| produit |
		| "Chocolat chaud" |