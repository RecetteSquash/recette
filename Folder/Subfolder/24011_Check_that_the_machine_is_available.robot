# Automation priority: 10
# Test case importance: High
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_24011_SETUP}	Get Variable Value	${TEST 24011 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_24011_SETUP is not None	${__TEST_24011_SETUP}

Test Teardown
	${__TEST_24011_TEARDOWN}	Get Variable Value	${TEST 24011 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_24011_TEARDOWN is not None	${__TEST_24011_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
Check that the machine is available
	${row_1_1} =	Create List	name	badge_number
	${row_1_2} =	Create List	Dupont	1050
	${datatable_1} =	Create List	${row_1_1}	${row_1_2}

	[Setup]	Test Setup

	Given the machine is connected
	# The switch is ON.
	And I have a badge with a balance of ${balance}
	When I pass my badge "${datatable_1}"
	Then I see that my balance is displayed : ${balance}

	[Teardown]	Test Teardown