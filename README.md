## Test technique Tracktor : gestion des disponibilités

## Setup

Voici une application rails contenant ce dont tu as besoin pour faire le test technique

* sqlite en base de données (comme cela pas de serveur a installé en local)
* milligram pour la partie css
* mini-test pour la partie test
* rails standard pour le reste (sans activestorage, actioncable, sans webpack)

Fork le projet en local et c'est parti

1. `bundle install`
2. `rails db:setup` (creer la base et seed quelques données de test)
4. `rails server`
5. Rend toi sur [la page d'acceuil de l'appli](http://localhost:3000)
3. A toi de jouer maintenant

**Points d'attention**

- envoie nous les resultat par mail en zip sans oublier le `.git` pour avoir ton depot complet.
- ne soumet pas de PR sur ce depot pour tes resultat
- rien n'est fixe sur ce test, si tu est plus a l'aise avec `rspec` au lieu de `mini-test`
  met le en place et explique nous pourquoi. Tu es libre de tes choix d'implementation
- pense aux details : historique git, qualité du code, test, etc...


## Le test


Le test se compose de 3 parties

1. Completer l'implementation de la methode `Event.availabilities`

L'objectif ici est d'écrire une méthode permettant de connaître les disponibilités d'un agenda
en fonction des événements attachés à celui-ci.
La méthode prend en entrée une date et recherche toutes les disponibilités sur les 7 jours
suivants en fonction des événements existants.

Les évènements sont de deux types:

 - 'opening' qui correspondent à des périodes de disponibilité pour une journée donnée, et peuvent être récurrentes à la semaine.
 - 'appointment' qui sont des périodes d'occupation.

La mission : faire passer le test unitaire ci-joint et rajouter les tests des cas aux limites qui te semblent pertinents.

Exemple de retour attendu:

```
[
  {"date":"2014/08/04","slots":["12:00","13:30"]},
  {"date":"2014/08/05","slots":["09:00", "09:30"]},
  {"date":"2014/08/06","slots":[]},
  {"date":"2014/08/07","slots":["15:30","16:30","16:45","17:00"]},
  {"date":"2014/08/08","slots":[]},
  {"date":"2014/08/09","slots":["14:00", "14:30"],"substitution":null},
  {"date":"2015/08/10","slots":[]}
]

```

2. Afficher les events deja créer pour les 2 prochain mois grouper par mois et année

3. Faire une UI pour afficher les resultat d'un recherche de disponibilité
   via la methode `Event.availabilities`


