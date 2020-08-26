# Automation priority: null
# Test case importance: LOW
	# -------------------------- SCENARIO EXAMPLE N°2 -------------------------- 
	# Example of a scenario with a data table but no configuration of test steps
	Scenario: Check what products are available.
		Given the machine is operating.
		When I list the available products.
		Then I notice that the following products are available :
		| product		| price |
		| Expresso		| 0.40  |
		| Lungo				| 0.50  |
		| Cappuccino	| 0.80  |