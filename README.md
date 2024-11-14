# bot-referent

[Cahier des charges](https://www.notion.so/kevinoclock/Bot-r-f-rent-Cahier-des-charges-1207207cb7d2800898d5d38a3d17bc0b)

Planning de développement : <https://github.com/KevinGanthyOclock/bot-referent/projects?query=is%3Aopen>

---

## Utilisation

> :warning: Penser à créer le fichier `.env` à partir du fichier `.env.example`

Au choix :

* Avec **devcontainer**, démarrage automatique
* Avec **docker**, commande `docker compose up -d`

## Accès

* `localhost` : Front end (vide)
* `pb.localhost` : Pockebase

### Pockebase custom endpoints

* `pb.localhost/api/generateResponse/:message_id` : Génère une réponse à un message
* `pb.localhost/api/sendResponse/:message_id` : Envoie la réponse au message en thread sur discord