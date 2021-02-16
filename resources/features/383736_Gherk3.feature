# Automation priority: null
# Test case importance: LOW
# language: fr
Fonctionnalité: Gherk3
	# A l'exécution, les valeurs de paramètres entre <> seront substituées
	# Le scénario sera joué une fois pour chaque jeu de données
	Plan du Scénario: Vérifier la livraison des produits.
		Etant donné que la machine est en marche.
		Et que mon solde est au moins de <prix>.
		Quand je sélectionne le <produit>.
		Alors la machine me sert un <produit> et mon compte est débité de <prix>.
		Exemples:
		| produit			| prix  |
		| Expresso		| 0.40  |
		| Lungo				| 0.50  |
		| Cappuccino	| 0.80  |


  