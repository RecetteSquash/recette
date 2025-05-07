# language: en
Feature: JBL_2

	Scenario Outline: JBL_2
		Given la machine est en marche.
		And mon solde est au moins de <prix>.
		When je sélectionne le <produit>.
		Then la machine me sert un <prix> et mon compte est débité de <prix>.

		@JDD_Cappûcînô
		Examples:
		| prix | produit |
		| 1 | "cappûcînô" |

		@JDD_Expresso
		Examples:
		| prix | produit |
		| 0.4 | "expresso" |

		@JDD_Lungo
		Examples:
		| prix | produit |
		| 0.50 | "lungo" |