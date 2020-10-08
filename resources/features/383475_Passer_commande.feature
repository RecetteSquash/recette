# Priorité d'automatisation: null
# Importance du cas de test: Faible
# language: fr
Fonctionnalité: Passer commande

	Scénario: Passer commande
		Étant donné que Je clique sur le bouton panier
		Quand Je clique sur le bouton "valider"
		Et j'entre mes informations de paiement par <moyen_paiement>
		Alors la commande est validée