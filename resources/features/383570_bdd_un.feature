# Automation priority: 12
# Test case importance: Very high
# language: en
Feature: bdd un

	Scenario Outline: bdd un
		Given je suis connectée
			| login| mdp|
			| admin| admin |
			| guest| guest|
			| user1| user1|
			"""
			copier l'url dans un nouveau navigateur
			"""
		When je clique sur le bouton <type_bouton>
			#Les boutons sont des icones - Infobulles au survol
		Then la page est de couleur <couleur>

		@cas1
		Examples:
		| couleur | type_bouton |
		| "verte" | "Connexion" |

		@cas2
		Examples:
		| couleur | type_bouton |
		| "rouge" | "Déconnexion" |

		@cas3
		Examples:
		| couleur | type_bouton |
		| "blanche" | "Mon compte" |