# bot-referent

[Cahier des charges](https://www.notion.so/kevinoclock/Bot-r-f-rent-Cahier-des-charges-1207207cb7d2800898d5d38a3d17bc0b)

Planning de développement : <https://github.com/KevinGanthyOclock/bot-referent/projects?query=is%3Aopen>

---

## Utilisation

> :warning: Penser à créer le fichier `.env` à partir du fichier `.env.example`

Au choix :

* Avec **devcontainer**, démarrage automatique
* Avec **docker**, commande `docker compose up -d`

### Accès

* `localhost` : Front end (vide)
* `pb.localhost` : Pockebase

### Pockebase

**Auto seeding** : Le fichier `init.sql` est exécuté automatiquement au démarrage de Pocketbase si la base de données est vide.

* **EMAIL :** admin@oclock.io
* **PASSWORD :** azerty1234

Custom endpoints :

* `pb.localhost/api/generateResponse/:message_id` : Génère une réponse à un message
* `pb.localhost/api/sendResponse/:message_id` : Envoie la réponse au message en thread sur discord

## Going to production

Une image docker est générée à l'aide du `Dockerfile` à la racine du projet avec la commande :

```sh
docker build -t pocketbot --build-arg VITE_APP_NAME="Pocketbot" .
```

Pour lancer l'image, il suffit de lancer la commande 

```sh
docker run --env-file=.env -p 8090:8090 pocketbot
```

Le fichier `.env` doit contenir les variables d'environnement suivantes :

* DISCORD_BOT_TOKEN
* OPENAI_API_KEY
* POCKET_URL
* POCKET_PORT
