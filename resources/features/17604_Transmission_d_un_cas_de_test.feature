# Automation priority: null
# Automation status: TRANSMITTED
# Test case importance: LOW
# language: en
Feature: Transmission d'un cas de test
  Scenario: Check that the machine is available.
		Given the machine is operating.
		When I use my badge.
		Then I can check my balance.
		