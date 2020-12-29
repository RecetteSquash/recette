# Automation priority: null
# Test case importance: Very high
# language: en
Feature: Check that the machine is available.

	Scenario Outline: Check that the machine is available.
		Given the machine is "operating"
			#The machine is operating when a green light is illuminated on the control screen.
		When I use <my_badge>
		Then I can check my balance.
			"""
			Balance : 
			The balance of your badge is 15€.
			"""
		And I see that all the following products are available:
			|#| product       | price |
			|1| Expresso    | 0.40  |
			|2| Lungo         | 0.50  |
			|3| Cappuccino | 0.80  |
			#The list of products is displayed below the message.

		@Company_1
		Examples:
		| my_badge |
		| "Badge n°123456" |

		@Company_2
		Examples:
		| my_badge |
		| "Badge n°234567" |