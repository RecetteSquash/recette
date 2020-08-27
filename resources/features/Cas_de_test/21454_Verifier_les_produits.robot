# Automation priority: null
# Test case importance: High
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Test Cases ***
Vérifier les produits
	${produit} =	Get Param	produit

	Given je sélectionne le ${produit}
	Then Je vérifie sa qualité