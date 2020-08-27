# Automation priority: null
# Test case importance: High
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Test Cases ***
Vérifier la livraison des produits
	${produit} =	Get Param	produit
	${produit} =	Get Param	produit
	${prix} =	Get Param	prix

	When je sélectionne le ${produit}
	Then la machine me sert un ${produit} et mon compte est débité de ${prix}