# language: en
Feature: Vérifier la livraison des produits

	Scenario Outline: Vérifier la livraison des produits
		Given la machine est en marche
		Given mon solde est au moins de <prix>
		Given je sélectionne le <produit>
		Given la machine me sert un <produit> et mon compte est débité de <prix>

		@Cappûcînô
		Examples:
		| prix | produit |
		| 1 | "cappûcînô" |

		@JDD_Expresso
		Examples:
		| prix | produit |
		| 0,40 | "expresso" |

		@JDD_Lungo
		Examples:
		| prix | produit |
		| 0.50 | "lungo" |