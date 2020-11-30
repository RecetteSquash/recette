# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource
Library		squash_tf.TFParamService

*** Test Cases ***
CT001
	${partieducorp} =	Get Test Param	DS_partieducorp

	Given Je suis un éléphant
	When Comme je m'envole
	Then J'ai des grosses ${partieducorp}