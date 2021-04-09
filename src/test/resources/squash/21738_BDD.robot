# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
BDD
	Given une action sans paramètre
	When une action avec un paramètre "libre"
	Then une action avec un paramètre ${porte} par le cas de test