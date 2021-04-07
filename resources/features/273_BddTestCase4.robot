# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
BddTestCase4
	Given Je me rends sur la page de connexion "http://google.com"
	When Je saisis mon "param1" et mon "param2" et je click sur "me connecter"
	Then La page d'accueil s'affiche avec mon profil identifié