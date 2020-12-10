# Automation priority: 10
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
Vérifier les produits disponibles
	Given la machine est en marche
	When je liste les produits disponibles
	Then je constate que tous les produits suivants sont disponibles