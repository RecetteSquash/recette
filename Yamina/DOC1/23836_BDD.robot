# Automation priority: null
# Test case importance: Very high
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_23836_SETUP}	Get Variable Value	${TEST 23836 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_23836_SETUP is not None	${__TEST_23836_SETUP}

Test Teardown
	${__TEST_23836_TEARDOWN}	Get Variable Value	${TEST 23836 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_23836_TEARDOWN is not None	${__TEST_23836_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD
	[Setup]	Test Setup

	Given Mon action
	When Mon evolution
	Then ma vision

	[Teardown]	Test Teardown