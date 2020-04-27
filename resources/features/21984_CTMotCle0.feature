# language: en
Feature: CTMotClé0

	Scenario: CTMotClé0
		Given la machine est en marche
		When je passe mon badge.
		Then la machine me sert mon café et mon compte est débité de 1,50€
		Given Hello