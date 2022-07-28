# Automation priority: 27
# Test case importance: Medium
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_23837_SETUP}	Get Variable Value	${TEST 23837 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_23837_SETUP is not None	${__TEST_23837_SETUP}

Test Teardown
	${__TEST_23837_TEARDOWN}	Get Variable Value	${TEST 23837 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_23837_TEARDOWN is not None	${__TEST_23837_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
BDD1
	[Setup]	Test Setup

	Given Mon action
	When Mon evolution
	Then ma vision

	[Teardown]	Test Teardown