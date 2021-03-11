# Automation priority: 30
# Test case importance: Medium
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
Vérifier les produits disponibles/2
	${row_1_1} =	Create List	mode	affichage
	${row_1_2} =	Create List	éco	luminosité faible
	${row_1_3} =	Create List	full	luminosité forte
	${datatable_1} =	Create List	${row_1_1}	${row_1_2}	${row_1_3}
	${row_2_1} =	Create List	type	produit
	${row_2_2} =	Create List	café	expresso
	${row_2_3} =	Create List	café	double
	${row_2_4} =	Create List	café	double expresso
	${row_2_5} =	Create List	autre	cappuccino
	${row_2_6} =	Create List	autre	noisette
	${datatable_2} =	Create List	${row_2_1}	${row_2_2}	${row_2_3}	${row_2_4}	${row_2_5}	${row_2_6}
	${row_3_1} =	Create List	produit	prix
	${row_3_2} =	Create List	Expresso	0.40
	${row_3_3} =	Create List	Lungo	0.50
	${row_3_4} =	Create List	Cappuccino	0.80
	${datatable_3} =	Create List	${row_3_1}	${row_3_2}	${row_3_3}	${row_3_4}

	Given la machine est en marche. "${datatable_1}"
	When je liste les produits disponibles "${datatable_2}"
	# Seuls les produits de la catégorie Café sont vérifiés dans ce test.
	Then je constate que tous les produits suivants sont disponibles : "${datatable_3}"