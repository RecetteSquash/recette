# Automation priority: 15
# Automation status: TRANSMITTED
# Test case importance: LOW
# language: en
Fonctionnalité: juste un git


	Scénario: Vérifier que la machine est disponible.
		Etant donné que la machine est branchée.
		Quand je passe mon badge.
		Alors je constate que mon solde s'affiche.


	Scenario Outline: Check the delivery of products.
		Given the machine is operating
		And my account contains at least <price>.
		When I select <product>.
		Then the machine delivers me a <product> and my account is charged <price>.
		Examples:
		| product			| price |
		| Expresso		| 0.40  |
		| Lungo				| 0.50  |
		| Cappuccino	| 0.80  |
