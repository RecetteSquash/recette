# Automation priority: 10
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Test Cases ***
Vérifier que la machine à café est disponible
	${mon_badge} =	Get Test Param	DS_mon_badge

	${row_1_1} =	Create List	#	produit	prix
	${row_1_2} =	Create List	1	Expresso	0.40
	${row_1_3} =	Create List	2	Lungo	0.50
	${row_1_4} =	Create List	3	Cappuccino	0.80
	${datatable_1} =	Create List	${row_1_1}	${row_1_2}	${row_1_3}	${row_1_4}

	${docstring_1} =	Set Variable	Solde : \nLe solde de votre badge est de 15€

	Given la machine est "branchée"
	# La machine est branchée lorsque qu'un voyant vert est allumé sur l'écran de commande.
	When je passe ${mon_badge}
	Then je constate qu'un message s'affiche "${docstring_1}"
	And je constate que tous les produits suivants sont disponibles : "${datatable_1}"
	# La liste des produits s'affiche sous le message.