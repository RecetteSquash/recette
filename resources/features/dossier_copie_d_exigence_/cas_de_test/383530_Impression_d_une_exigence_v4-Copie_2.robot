# Automation priority: null
# Test case importance: Medium
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Test Cases ***
Impression d'une exigence v4-Copie 2
	${option_menu} =	Get Test Param	DS_option_menu

	Given je sélectionne l'option ${option_menu}
	When j'accède à la page ${option_menu}
	Then ${option_menu} se déroue correctement