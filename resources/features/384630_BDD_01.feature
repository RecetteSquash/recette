# Automation priority: 1
# Test case importance: Low
# language: en
Feature: BDD 01

	Scenario Outline: BDD 01
		Given hello ordl
		Given bonjour
		When when test
			| produit | prix |
			| Expresso | 0.40 |
			"""
			Docstring test
			"""
			#Commentaire test
		Then then test
		And and test
		But buttest
		Given is "param1" <pparam1>
			"""
			Docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring docstring 
			"""
			#Commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire  commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire  commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire  commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire  commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire  commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire 
		Given is "param2" <pparam2>
		And of "param1" "param2"

		@JDD1
		Examples:
		| pparam1 | pparam2 |
		| "pparam1value1" | "pparam1value1" |

		@JDD2
		Examples:
		| pparam1 | pparam2 |
		| "pparam1value2" | "pparam1value2" |