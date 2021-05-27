# Automation priority: null
# Test case importance: Low
# language: en
Feature: Cas de test BDD

	Scenario: Cas de test BDD
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told "Nope"