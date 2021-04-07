# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Test Cases ***
BddTestCase1
	${login} =	Get Test Param	DS_login
	${motdepasse} =	Get Test Param	DS_motdepasse

	Given Je me rends sur la page de connexion "http://pouetpouet.com"
	When Je saisis mon ${login} et mon ${motdepasse} et je click sur "me connecter"
	Then La page d'accueil s'affiche avec mon profil identifié