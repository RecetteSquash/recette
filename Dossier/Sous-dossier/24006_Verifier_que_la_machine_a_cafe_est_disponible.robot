# Automation priority: 10
# Test case importance: High
*** Settings ***
Resource	squash_resources.resource

*** Keywords ***
Test Setup
	${__TEST_SETUP}	Get Variable Value	${TEST SETUP}
	${__TEST_24006_SETUP}	Get Variable Value	${TEST 24006 SETUP}
	Run Keyword If	$__TEST_SETUP is not None	${__TEST_SETUP}
	Run Keyword If	$__TEST_24006_SETUP is not None	${__TEST_24006_SETUP}

Test Teardown
	${__TEST_24006_TEARDOWN}	Get Variable Value	${TEST 24006 TEARDOWN}
	${__TEST_TEARDOWN}	Get Variable Value	${TEST TEARDOWN}
	Run Keyword If	$__TEST_24006_TEARDOWN is not None	${__TEST_24006_TEARDOWN}
	Run Keyword If	$__TEST_TEARDOWN is not None	${__TEST_TEARDOWN}

*** Test Cases ***
Vérifier que la machine à café est disponible
	${row_1_1} =	Create List	nom	n°badge
	${row_1_2} =	Create List	Dupont	1050
	${datatable_1} =	Create List	${row_1_1}	${row_1_2}

	[Setup]	Test Setup

	Given la machine est branchée
	# Le bouton est sur ON.
	And je dispose d'un badge avec solde de ${solde}
	When je passe mon bagde "${datatable_1}"
	Then Je constate que mon solde s'affiche : ${solde}

	[Teardown]	Test Teardown