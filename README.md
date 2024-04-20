# Ruby on Rails

Remarque importante : Il existe un problème avec Devise en production, il est impossible de se connecter et le serveur renvoie une erreur 422. Cependant, cela fonctionne correctement en mode développement.

## Prérequis

- Ruby version X.X.X
- Rails version X.X.X
- SQLite3

## Installation

1. Clonez ce dépôt
2. Installez les dépendances : `bundle install`
3. Créez la base de données : `rails db:create`
4. Exécutez les migrations : `rails db:migrate`

## Utilisation

Pour démarrer le serveur de développement, exécutez la commande suivante :

```bash
./bin/dev