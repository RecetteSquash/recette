# Automation priority: null
# Automation status: TRANSMITTED
# Test case importance: LOW
# language: fr
Fonctionnalité: Gherkin
  

	Plan du Scénario: Vérifier la livraison des produits.
	  Alars la machine me sert un <produit> et mon compte est débité de <prix>.
		Etant donné que la machine est en marche.
		Et que mon solde est au moins de <prix>.
		Quand je sélectionne le <produit>. de monsieur <nom>
		Exemples:
		| produit			| prix  | nom |
		| Expresso		| 0.40  | 180 |
		| Lungo				| 0.50  | A |
		| Cappuccino	| 0.80  | M |
		| cafe noisette | 3 | K |


	Scénario: Vérifier les produits disponibles.
		Etant donné que la machine est en marche.
		Quand je liste les produits disponibles.
		Alors je constate que tous les produits suivants sont disponibles :
		| produit			| prix  |
		| Expresso		| 0.40  |
		| Lungo				| 0.50  |
		| Cappuccino	| 0.80  |