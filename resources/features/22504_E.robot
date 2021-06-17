# Automation priority: null
# Test case importance: Low
*** Settings ***
Resource	squash_resources.resource

*** Test Cases ***
E
	When "langage." #Léé±® "Nerd" avec un peu de texte
	Given J'ai "nombre" pommes
	Given "un_objet" s'il vous plait beaucoup
	Given "des_objets" s'il vous plait beaucoup