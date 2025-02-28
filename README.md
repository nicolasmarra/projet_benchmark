# Projet Benchmark 

## Objectif du projet

Ce projet vise à comparer les performances et les caractéristiques d'un système de gestion de base de données NoSQL et d'un système de gestion de base de données relationnelle. Nous avons choisi CouchDB comme système NoSQL pour ses avantages :  
a) **Synchronisation** efficace entre clients et serveurs ;  
b) **Flexibilité** grâce à un modèle basé sur des documents JSON ;  
c) Gestion d'une **base de données par utilisateur**, pratique pour les environnements multi-utilisateurs ;  
d) Mise en place simple de la **réplication** et d'un **cluster**.

Cependant, CouchDB présente certaines limitations :  
a) Une documentation parfois **incomplète ou expéditive** ;  
b) Une configuration hybride (**fichiers** et **API**) peu adaptée à un provisionnement automatique ;  
c) Une **consommation élevée d'espace disque** ;  
d) Un système de requêtes **limité en termes de fonctionnalités avancées**.

## Architecture du projet

L'architecture du projet repose sur des conteneurs Docker :  
- Le **notebook Jupyter** est accessible via le port 8888 dans un conteneur dédié ;  
- Le service **PostgreSQL** et le serveur **CouchDB** sont aussi déployés dans des conteneurs distincts. 
Les trois conteneurs appartiennent au même réseau : **notebook_net**.

### Démarrage du projet

Pour exécuter ce projet, utilisez la commande suivante :  

```bash
docker compose up -d
```  

Une fois les conteneurs lancés, vous pouvez accéder au notebook disponible dans le fichier :  
`notebooks/notebook.ipynb`

## Jeu de données

Le jeu de données utilisé pour ce projet est issu de l’**Open Data** et contient **3123 entrées**. Il s’agit d’une base de données sur les **points de vente SNCF**, disponible à l’adresse suivante :  
[https://www.data.gouv.fr/fr/datasets/points-de-vente-sncf/](https://www.data.gouv.fr/fr/datasets/points-de-vente-sncf/)

## Travail effectué

Nous avons comparé les deux SGBD sur plusieurs aspects :  
- **Insertion de données** ;  
- **Requêtes de sélection** ;  
- **Mises à jour** (update) ;  
- **Suppressions** (delete).

Nous avons aussi testé CouchDB avec et sans index afin d'évaluer l'impact des index sur les performances. Cependant, la partie sur la **réplication des données** n'a pas été réalisée.  

Tous les résultats et analyses sont documentés dans le notebook.  
