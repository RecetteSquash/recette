# Automation priority: 45
# Test case importance: LOW
# language: fr
Fonctionnalité: atteinte état final
  Scénario: Vérifier que la machine est disponible.
    Scénario: Vérifier les produits disponibles.
		Etant donné que la machine est en marche.
		Quand je liste les produits disponibles.
		Alors je constate que tous les produits suivants sont disponibles :
		| produit			| prix  |
		| Expresso		| 0.40  |
		| Lungo				| 0.50  |
		| Cappuccino	| 0.80  |
