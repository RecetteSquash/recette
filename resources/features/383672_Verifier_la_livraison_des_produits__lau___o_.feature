# langue: fr
Fonctionnalité: Vérifier la livraison des produits (làù^%{o)

	Plan du scénario: Vérifier la livraison des produits (làù^%{o)
		Étant donné que la machine est en marche
		Et mon solde est au moins de <prix>.
		Quand je sélectionne le <produit>.
		Alors la machine me sert un <produit> et mon compte est débité de <prix>.

		@JDD_Cappûcînô
		Exemples:
		| prix | produit |
		| 1 | "Cappûcînô" |

		@JDD_Expresso
		Exemples:
		| prix | produit |
		| 0.4 | "expresso" |

		@JDD_Lungo
		Exemples:
		| prix | produit |
		| 0,5 | "lungo" |