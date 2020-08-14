# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
bdd1
	Then troisième pas de test
	Given premier pas de test
	Given quatrieme pas de test avec "param" pour l'exemple
	When deuxieme pas de test