# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
CT04 Autom1
	Given Ac sans parametre et rattaché
	Given Ac avec "2" paramètres "4" et aussi "beer" rattachés