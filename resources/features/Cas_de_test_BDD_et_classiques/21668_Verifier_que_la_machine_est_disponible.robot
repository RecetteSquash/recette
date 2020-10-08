# Automation priority: null
# Test case importance: High
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
Vérifier que la machine est disponible
	Given J'ai ${solde} sur ma carte
	When J'achète un café à ${prix}
	Then Mon compte est débité