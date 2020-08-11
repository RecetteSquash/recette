# language: en
Feature: TEST_2

	Scenario: TEST_2
		Given je suis connecté en tant que chef de projet
		When je clique sur le bouton [Administration] et [Projets]
		Then je vois tous les projets ou j'ai une habilitation
		But mais pas les autres
		Given j'ai un compte gmail.
		When je me connecte.
		Then je constate que je me suis fait spamer par MantisBT.