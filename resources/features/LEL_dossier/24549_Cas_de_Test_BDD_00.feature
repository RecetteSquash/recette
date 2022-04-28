# Automation priority: 1
# Test case importance: Low
# language: en
Feature: Cas de Test BDD 00

	Scenario Outline: Cas de Test BDD 00
		Given action 1
		Then action with parameter <parameter1>
		But action with parameter "parameter1"

		@JDD
		Examples:
		| parameter1 |
		| "parameter value" |