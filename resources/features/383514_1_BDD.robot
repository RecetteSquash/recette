# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
1_BDD
	Given je vais ${endroit}
	When j'achète ${produits}
	When je peux cuisiner ${plats}