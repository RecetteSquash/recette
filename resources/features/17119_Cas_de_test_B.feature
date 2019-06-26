# Automation priority: 10
# Automation status: TRANSMITTED
# Test case importance: HIGH
# language: fr
Fonctionnalité: Cas de test B
  
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
