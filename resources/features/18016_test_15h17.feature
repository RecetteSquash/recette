# Automation priority: null
# Automation status: TRANSMITTED
# Test case importance: LOW
# language: en
Feature: test 15h17
  Scenario: Check that the machine is available.
		Given the machine is operating.
		When I use my badge.
		Then I can check my balance.