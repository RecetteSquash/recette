# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_34_SETUP}	Get Variable Value	${TEST 34 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_34_SETUP is not None	${__TEST_34_SETUP}

Test Teardown
	${__TEST_34_TEARDOWN}	Get Variable Value	${TEST 34 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_34_TEARDOWN is not None	${__TEST_34_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD1-Copie5
	[Setup]	Test Setup
	[Teardown]	Test Teardown