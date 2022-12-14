# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_12_SETUP}	Get Variable Value	${TEST 12 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_12_SETUP is not None	${__TEST_12_SETUP}

Test Teardown
	${__TEST_12_TEARDOWN}	Get Variable Value	${TEST 12 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_12_TEARDOWN is not None	${__TEST_12_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD1-Copie3
	[Setup]	Test Setup
	[Teardown]	Test Teardown