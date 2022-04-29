<?php

namespace App\Dao;

use App\Model\Comment;
use Core\AbstractDao;

class CommentDao extends AbstractDao
{
    /**
     * Récupère tous les commentaires de l'article.
     *
     * @param [type] $idArticle L'identifiant de l'aticle.
     * @return array|null retourne un tableau de commentaires ou null si il y en a pas.
     */
    public function getCommentsByArticle($idArticle): ?array
    {
        $query = $this->dbh->prepare("SELECT * FROM comment where article_id=:id");
        $query->execute([
            ":id" => $idArticle
        ]);
        $result = $query->fetchAll(\PDO::FETCH_ASSOC);

        for ($i = 0; $i < count($result); $i++) {
            $c = new Comment();
            $result[$i] = $c->setUserId($result[$i]['user_id'])
                ->setContent($result[$i]['content'])
                ->setCreatedAt($result[$i]['created_at'])
                ->setIdComment($result[$i]['id_comment']);
        }

        return $result;
    }

      /**
     * Récupères de la base de données un commentaire en fonction de son id ou null si il n'éxiste pas
     *
     * @param int $id Identifiant du commentaire qu'on doit récupérer de la bdd
     * @return Article|null Objet du commentaire récupéré en bdd ou null
     */
    public function getCommentById($idComment): ?Comment
    { 
        $querry = $this->dbh->prepare("SELECT * FROM comment where id_comment=:id_comment;");
        $querry->execute([":id_comment" => $idComment]);
        $result = $querry->fetch(\PDO::FETCH_ASSOC);
      
        if (empty($result)) {
            return null;
        }

            $c = new Comment();
            $c->setUserId($result['user_id'])
                ->setContent($result['content'])
                ->setCreatedAt($result['created_at'])
                ->setIdComment($result['id_comment']);

            return $c;
    }

    /**
     * Insertion dans la base de données d'un nouveau commentaire entré par l'utilisateur.
     *
     * @param Comment $comment commentaire de l'utilisateur rempli dans le formulaire.
     * on enregistre le dernier id récupérer dans la base de données et on l'enregistre dans
     * l'objet passé par référence.
     * @return void
     */
    public function new(Comment $comment): void
    {
        $query = $this->dbh->prepare(
            "INSERT INTO comment (content,user_id,article_id)
                                            VALUES (:content,:userId,:articleId)"
        );
        $query->execute([
            ':content' => $comment->getContent(),
            ':userId' => $comment->getUserId(),
            ':articleId' => $comment->getArticleId()
        ]);
        $comment->setIdComment($this->dbh->lastInsertId());
    }

    /**
     * Supprimes le commentaire de la base de données
     *
     * @param int $id L'identifiant du commentaire à supprimer
     */
    public function delete(int $idComment): void
    {
        $querry = $this->dbh->prepare("DELETE from comment WHERE id_comment= :id_comment");
        $querry->execute([":id_comment" => $idComment]);
    }

    /**
    * Edite un commentaire de la base de données en fonction de son ID.
    *
    * @param Comment Objet le commentaire à insérer dans la BDD.
    */
    public function edit(Comment $comment): void
    {
        $querry = $this->dbh->prepare("UPDATE comment SET content = :content WHERE id_comment = :id_comment");
        $querry->execute([
            ":content" => $comment->getContent(),
            ":id_comment" => $comment->getIdComment()            
        ]);     
    }
 
}
