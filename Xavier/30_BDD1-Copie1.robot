# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_30_SETUP}	Get Variable Value	${TEST 30 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_30_SETUP is not None	${__TEST_30_SETUP}

Test Teardown
	${__TEST_30_TEARDOWN}	Get Variable Value	${TEST 30 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_30_TEARDOWN is not None	${__TEST_30_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD1-Copie1
	[Setup]	Test Setup
	[Teardown]	Test Teardown