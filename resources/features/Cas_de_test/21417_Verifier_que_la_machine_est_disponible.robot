# Automation priority: null
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Test Cases ***
Vérifier que la machine est disponible
	${produit} =	Get Param	produit

	Given la machine est branchée
	When je passe mon badge
	And je sélectionne le ${produit} et j'appuie sur ok
	Given je fais un "test"