# Automation priority: null
# Test case importance: High
# language: en
Feature: Vérifier la livraison des produits

	Scenario Outline: Vérifier la livraison des produits
		When je sélectionne le <produit>
		Then la machine me sert un <produit> et mon compte est débité de <prix>

		@JDD_Cappuccino
		Examples:
		| prix | produit |
		| 0,70 | "Cappuccino" |

		@JDD_Expresso
		Examples:
		| prix | produit |
		| 0,40 | "Expresso" |

		@JDD_Lungo
		Examples:
		| prix | produit |
		| 0,50 | "Lungo" |