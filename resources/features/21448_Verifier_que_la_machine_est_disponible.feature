# Prioridad de automatización: null
# Importancia del caso de prueba: Baja
# language: es
Característica: Vérifier que la machine est disponible

	Escenario: Vérifier que la machine est disponible
		Dado la machine est branchée.
			| produit | prix |
			| Expresso | 0.40 |
		Cuando je passe mon badge
			| produit | prix |
			| Expresso | 0.40 |
		Entonces je constate que mon solde s'affiche.
			| date | solde |
			| jj/mm/aa | X.XX € |