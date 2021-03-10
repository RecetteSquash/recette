# Automation priority: 2
# Test case importance: Low
# language: en
Feature: bdd pour plusieurs transmission

	Scenario Outline: bdd pour plusieurs transmission
		Given je vais au marché
		When j'achète <produit>
		Then je peux faire <action>

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