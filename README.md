# ECF DWWM - Web Site

Vous avez 7 heures pour réaliser l'ECF.

**Vous serez évalué sur vos capacités à accomplir les contraintes fonctionnelles et techniques**

----------

## Mise en place

Clonez ce dépôt et téléversez-le sur un dépôt que vous aurez créé sur votre compte GitHub. Ou faites directement
un `fork` du dépôt sur votre compte GitHub.

Une base de données est fourni dans le fichier `ecf.sql` contenant les tables ainsi que les entrées nécessaires pour
commencer l'évaluation.

----------

## Commentaire

Vous devez faire un CRUD sur les commentaires en respectant ce qui suit :

- En tant que visiteur, je souhaite pouvoir lire les commentaires pour chacun des articles.
- En tant qu'utilisateur enregistré et authentifié, je souhaite pouvoir écrire, éditer et supprimer des commentaires.

> Pour pouvoir enregistrer les commentaires, je vous fournis la structure de la table. À vous de la créer dans la base
> de données.

La table devra se nommer `comment`.

| Nom | Type(Taille) | Nullable | Attribut | Index | Clé étrangère |
| --- | ------------ | -------- | -------- | ----- | ------------- |
| id_comment | int(11) | false | unsigned | primary key, auto_increment |  |
| article_id | int(11) | false | unsigned |  | article(id_article) |
| user_id | int(11) | true | unsigned |  | user(id_user) |
| content | text | false |  |  |  |
| created_at | datetime | false(Current_timestamp) |  |  |  |

### Fonctionnel

- Lors de l'affichage d'un article :
  - Un bouton `Add comment` doit apparaitre en dessous de l'article.
  - Les commentaires, liés à un article, doivent aussi être affiché après l'article.
  - Chacun des commentaires doit avoir un bouton `Edit` et `Delete`.
- Lors de l'ajout d'un commentaire :
  - Une nouvelle page avec un formulaire apparait.
  - Une fois le commentaire enregistré, je dois être redirigé sur la page de l'article.
- Lors de l'édition d'un commentaire :
  - Une nouvelle page avec un formulaire apparait.
  - Le commentaire doit apparaitre dans le formulaire.
  - Une fois le commentaire édité, je dois être redirigé sur la page de l'article.
- Lors de la suppression d'un commentaire :
  - Une fois le commentaire supprimé, je dois être redirigé sur la page de l'article.

### Technique

- Le code est propre, bien indenté et respectes les `PHP Standards Recommandations`.
- L'architecture MVC + DAO est respecté.
- Le `controller` qui traite la création, l'édition et la suppression d'un commentaire doit être
  nommé `CommentController`.
- L'insertion, la manipulation et l'affichage des données sont fait de manières sécurisées dans toutes les étapes.
- Une fois l'édition du commentaire validé, la redirection doit se faire sur le commentaire édité.
- Vous avez utilisé `Bootstrap 5` pour la mise en page.

----------

## Importation d'images

Vous devez créer une fonctionnalité pour importer des images dans vos articles.

### Fonctionnel

- L'importation des images se fait uniquement grâce à PHP par le biais d'un formulaire.
- L'image illustrant l'article doit être positionné dans le contenu de l'article.
- La page d'accueil affichera l'image à la place du contenu.

### Technique

- Limiter la taille de l'image lors de l'affichage. Environ 300-400 pixel de largeur par 200-300 pixel haut.
- Le code est propre, bien indenté et respectes les `PHP Standards Recommandations`.
- L'importation des images est fait de manières sécurisées.
- L'incrustation de l'image dans le contenu de l'article est propre.
- L'affichage de la liste des articles en page d'accueil avec leur illustration est soigné.
- Vous avez utilisé `Bootstrap 5` pour la mise en page.

----------

## Bonus : Pagination

Vous devez faire une pagination pour les articles de la page d'accueil.

### Fonctionnel

- Au-delà de cinq articles, les suivants ne sont pas affichés et une pagination apparait.

### Technique

- Le code est propre, bien indenté et respectes les `PHP Standards Recommandations`.
- La fonctionnalité est sécurisée, si c'est nécessaire.
- Vous avez utilisé `Bootstrap 5` pour la mise en page.
- Vous en avez fait de même pour les commentaires

----------

## Rendu

L'ECF devra être validé par un `git commit` avant 17:00 00000 puis déposé sur GitHub et le lien URL/HTTP du dépôt envoyé
par email à chiron.thibaut@sfr.fr.

Votre rendu devra absolument contenir une copie de votre base de données `ecf` ainsi que le travail en l'état.
