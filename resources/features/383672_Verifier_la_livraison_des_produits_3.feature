# language: en
Feature: Vérifier la livraison des produits 3

	Scenario: Vérifier la livraison des produits 3
		Given la machine est en marche
		And mon solde est au moins de prix.
		When je sélectionne le produit.
		Then la machine me sert un produit et mon compte est débité de prix.