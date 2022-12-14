# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_10_SETUP}	Get Variable Value	${TEST 10 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_10_SETUP is not None	${__TEST_10_SETUP}

Test Teardown
	${__TEST_10_TEARDOWN}	Get Variable Value	${TEST 10 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_10_TEARDOWN is not None	${__TEST_10_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD1-Copie1
	[Setup]	Test Setup
	[Teardown]	Test Teardown