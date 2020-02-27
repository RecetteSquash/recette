# Automation priority: null
# Automation status: TRANSMITTED
# Test case importance: LOW
# language: fr
Fonctionnalité: Vérifier la machine à café 
	Il s'agit de vérifier le bon fonctionnement de la machine à café.

	# Contexte optionnel. Si un contexte est présent, il sera réutilisé en tant que condition supplémentaire pour chaque scénario du script.
	Contexte:
		Soit une machine à café.


	# -------------------------- EXEMPLE SCENARIO 1 -------------------------- 
	# Exemple de scénario simple
	Scénario: Vérifier que la machine est disponible.
		Etant donné que la machine est branchée.
		Quand je passe mon badge.
		Alors je constate que mon solde s'affiche.


	# -------------------------- EXEMPLE SCENARIO 2 -------------------------- 
	# Exemple de scénario avec table de données sans paramétrage des pas de test
	Scénario: Vérifier les produits disponibles.
		Etant donné que la machine est en marche.
		Quand je liste les produits disponibles.
		Alors je constate que tous les produits suivants sont disponibles :
		| produit			| prix  |
		| Expresso		| 0.40  |
		| Lungo				| 0.50  |
		| Cappuccino	| 0.80  |