# Automation priority: null
# Automation status: TRANSMITTED
# Test case importance: HIGH
# language: fr
Fonctionnalité: Connexion à l'application avec paramètres
  
	Plan du Scénario: Vérifier la connexion à l'application OpenEcole
		Etant donné que la page de connexion est affichée.
		Quand je rensiegner les identifiants suivants: login = <login> et mot de passe = <mdp>
		Alors l'utilisateur est conencter et la page d'accueil s'affiche.
		Exemples:
		| login   | mdp   |
		| admin   | admin |
		| demo    | demo  |
		| user    | user  |