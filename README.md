## Test technique Tracktor : gestion des disponibilités

## Setup

Voici une application Rails contenant ce dont tu as besoin pour faire le test technique

* sqlite en base de données (comme cela pas de serveur a installé en local)
* milligram pour la partie css
* mini-test pour la partie test
* rails standard pour le reste (sans ActiveStorage, ActionCable, sans webpack)

Fork le projet en local et c'est parti

1. `bundle install`
2. `rails db:setup` (créer la base et seed quelques données de test)
4. `rails server`
5. Rends toi sur [la page d'acceuil de l'appli](http://localhost:3000)
3. À toi de jouer maintenant

**Points d'attention**

- envoie nous les résultats par mail en zip sans oublier le `.git` pour avoir ton dépôt complet.
- ne soumets pas de PR sur ce dépôt pour tes résultats
- rien n'est fixe sur ce test, si tu es plus à l'aise avec `rspec` au lieu de `mini-test`
  mets le en place et explique nous pourquoi. Tu es libre de tes choix d'implémentation
- pense aux details : historique git, qualité du code, test, etc...


## Le test


Le test se compose de 3 parties

1. Compléter l'implémentation de la méthode `Event.availabilities`

L'objectif ici est d'écrire une méthode permettant de connaître les disponibilités d'un agenda
en fonction des évènements attachés à celui-ci.
La méthode prend en entrée une date et recherche toutes les disponibilités sur les 7 jours
suivants en fonction des événements existants.

Les évènements sont de deux types:

 - 'opening' qui correspond à des périodes de disponibilité pour une journée donnée, et peut être récurrents à la semaine.
 - 'appointment' qui correspond à des périodes d'occupation.

La mission : faire passer le test unitaire ci-joint et rajouter les tests des cas limites qui te semblent pertinents.

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

2. Afficher les events déjà créer pour les 2 prochains mois groupés par mois et année

3. Faire une UI pour afficher les résultats d'un recherche de disponibilité
   via la methode `Event.availabilities`


