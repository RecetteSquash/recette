# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_31_SETUP}	Get Variable Value	${TEST 31 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_31_SETUP is not None	${__TEST_31_SETUP}

Test Teardown
	${__TEST_31_TEARDOWN}	Get Variable Value	${TEST 31 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_31_TEARDOWN is not None	${__TEST_31_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD1-Copie2
	[Setup]	Test Setup
	[Teardown]	Test Teardown