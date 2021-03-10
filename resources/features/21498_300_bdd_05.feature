# Automation priority: null
# Test case importance: Low
# language: en
Feature: 300.bdd 05

	Scenario Outline: 300.bdd 05
		Given je suis connectée
		When je cloque sur le bouton <type_bouton>
		Then la page <type_page> s'affiche

		@cas_1
		Examples:
		| type_bouton | type_page |
		| "Déconnexion" | "mire de login" |

		@cas_2
		Examples:
		| type_bouton | type_page |
		| "Home" | "page d'accueil du site" |

		@cas_3
		Examples:
		| type_bouton | type_page |
		| "Mon compte" | "Mon compte" |