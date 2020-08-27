# Automation priority: null
# Test case importance: High
# language: en
Feature: Vérifier les produits

	Scenario Outline: Vérifier les produits
		Given je sélectionne le <produit>
		Then Je vérifie sa qualité

		@JDD1
		Examples:
		| boisson | produit |
		| "Thé" | "" |

		@JDD2
		Examples:
		| boisson | produit |
		| "Café" | "" |

		@JDD3
		Examples:
		| boisson | produit |
		| "Chocolat" | "" |