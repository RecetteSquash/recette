# Automation priority: null
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Test Cases ***
Check that the machine is available.
	${my_badge} =	Get Test Param	DS_my_badge

	${row_1_1} =	Create List	#	product	price
	${row_1_2} =	Create List	1	Expresso	0.40
	${row_1_3} =	Create List	2	Lungo	0.50
	${row_1_4} =	Create List	3	Cappuccino	0.80
	${datatable_1} =	Create List	${row_1_1}	${row_1_2}	${row_1_3}	${row_1_4}

	${docstring_1} =	Set Variable	Balance : \nThe balance of your badge is 15€.

	Given the machine is "operating"
	# The machine is operating when a green light is illuminated on the control screen.
	When I use ${my_badge}
	Then I can check my balance. "${docstring_1}"
	And I see that all the following products are available: "${datatable_1}"
	# The list of products is displayed below the message.