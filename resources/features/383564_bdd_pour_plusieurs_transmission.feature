# Automation priority: 2
# Test case importance: Very high
# language: en
Feature: bdd pour plusieurs transmission

	Scenario Outline: bdd pour plusieurs transmission
		Given je vais au marché
		When j'achète <produit>
		Then je peux faire <action>
		Then Je suis satisfaite du résultat

		@jdd1
		Examples:
		| action | produit |
		| "un dessert" | "des pommes" |

		@jdd2
		Examples:
		| action | produit |
		| "un masque hydratant" | "du miel" |

		@jdd3
		Examples:
		| action | produit |
		| "de la couture" | "du tissu" |