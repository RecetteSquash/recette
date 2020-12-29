# Automation priority: 10
# Test case importance: Very high
# language: en
Feature: Vérifier que la machine à café est disponible

	Scenario Outline: Vérifier que la machine à café est disponible
		Given la machine est "branchée"
			#La machine est branchée lorsque qu'un voyant vert est allumé sur l'écran de commande.
		When je passe <mon_badge>
		Then je constate qu'un message s'affiche
			"""
			Solde : 
			Le solde de votre badge est de 15€
			"""
		And je constate que tous les produits suivants sont disponibles :
			|#| produit			| prix  |
			|1| Expresso		| 0.40  |
			|2| Lungo			| 0.50  |
			|3| Cappuccino	| 0.80  |
			#La liste des produits s'affiche sous le message.

		@Société_1
		Examples:
		| mon_badge |
		| "Badge n°123456" |

		@Société_2
		Examples:
		| mon_badge |
		| "Badge n°234567" |