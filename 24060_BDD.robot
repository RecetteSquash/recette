# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_24060_SETUP}	Get Variable Value	${TEST 24060 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_24060_SETUP is not None	${__TEST_24060_SETUP}

Test Teardown
	${__TEST_24060_TEARDOWN}	Get Variable Value	${TEST 24060 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_24060_TEARDOWN is not None	${__TEST_24060_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD
	[Setup]	Test Setup

	Given Mon test

	[Teardown]	Test Teardown