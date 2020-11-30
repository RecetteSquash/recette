# Automation priority: null
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
CT003
	Given Je suis "Grand" comme une girafe
	Then Je peux toucher ${objet}