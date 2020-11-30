# Automation priority: null
# Test case importance: High
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
CT002
	Given Je suis grand comme une girafe
	Then Je peu attraper des ${fruits}