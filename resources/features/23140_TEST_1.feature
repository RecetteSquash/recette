# language: en
Feature: TEST_1

	Scenario: TEST_1
		Given je suis connecté en tant qu'utilisateur
		When je clique sur le bouton [Panier]
		Then je vois le contenu de mon panier
		Given j'ai un compte gmail
		When je me connecte
		Then je constate que je me suis fait spamer par MantisBT