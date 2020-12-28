# Priorité d'automatisation: 10
# Importance du cas de test: Très haute
# language: fr
Fonctionnalité: Vérifier que la machine à café est disponible

	Plan du scénario: Vérifier que la machine à café est disponible
		Étant donné que la machine est "branchée"
			#La machine est branchée lorsque qu'un voyant vert est allumé sur l'écran de commande.
		Quand je passe <mon_badge>
		Alors je constate qu'un message s'affiche
			"""
			Solde : 
			Le solde de votre badge est de 15€
			"""
		Et je constate que tous les produits suivants sont disponibles :
			|#| produit			| prix  |
			|1| Expresso		| 0.40  |
			|2| Lungo			| 0.50  |
			|3| Cappuccino	| 0.80  |
			"""
			Veuillez sélectionner un produit en composant le numéro correspodant
			"""
			#Le message s'affiche au-dessus de la liste des produits.

		@Société_1
		Exemples:
		| mon_badge |
		| "Badge n°123456" |

		@Société_2
		Exemples:
		| mon_badge |
		| "Badge n°234567" |