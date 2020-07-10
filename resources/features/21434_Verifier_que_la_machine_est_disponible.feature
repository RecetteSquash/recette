# language: en
Feature: Vérifier que la machine est disponible

	Scenario Outline: Vérifier que la machine est disponible
		Given mon solde est au moins de &lt;prix&gt;.
		When je sélectionne le &lt;produit&gt;.
		Then la machine me sert un &lt;produit&gt; et mon compte est débité de &lt;prix&gt;.

		@JDD_Expresso
		Examples:
		| prix | produit |
		| 0,40 | "expresso" |