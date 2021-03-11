# Automation priority: 10
# Test case importance: Very high
# language: en
Feature: Vérifier la livraison des produits

	Scenario Outline: Vérifier la livraison des produits
		Given la machine est en marche.
		And mon solde est au moins de <prix>
		When je sélectionne le <produit>
		Then la macgine me sert un <produit> et mon compte est débité de <prix>

		@jdd_cappûcinô
		Examples:
		| prix | produit |
		| 1 | "cappûcinô" |

		@jdd_expresso
		Examples:
		| prix | produit |
		| 0.40 | "expresso" |

		@jdd_lungo
		Examples:
		| prix | produit |
		| 0.50 | "lungo" |