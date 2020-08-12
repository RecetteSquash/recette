# idioma: es
Característica: Vérifier la livraison des produits (làù^%{o)

	Esquema del escenario: Vérifier la livraison des produits (làù^%{o)
		Dado la machine est en marche
		Y mon solde est au moins de <prix>.
		Cuando je sélectionne le <produit>.
		Entonces la machine me sert un <produit> et mon compte est débité de <prix>.

		@JDD_Cappûcînô
		Ejemplos:
		| prix | produit |
		| 1 | "Cappûcînô" |

		@JDD_Expresso
		Ejemplos:
		| prix | produit |
		| 0.4 | "expresso" |

		@JDD_Lungo
		Ejemplos:
		| prix | produit |
		| 0,5 | "lungo" |