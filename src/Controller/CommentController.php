<?php

namespace App\Controller;

use PDOException;
use App\Dao\CommentDao;
use App\Model\Comment;

class CommentController
{
    /**
     * Créer un nouveau commentaire.
     */
    public function new($idArticle)
    {
        //Si l'utilisateur n'est pas connecté on le redirige sur la page d'accueil.
        if (!isset($_SESSION['user'])) {
            header('Location: /');
            die;
        }
        $btnName = "Add";

        //Récupération des informations de l'utilisateur connecté dans l'objet user.
        $user = $_SESSION['user'];

        //Récupération des données de l'utilisateur envoyé en méthode "POST" en utilisant un filtre.
        $args = [
            'content' => []
        ];

        $userComment = filter_input_array(INPUT_POST, $args);

        //Vérification des données :
        if (isset($userComment["content"])) {
            if (empty($userComment["content"])) {
                $error_messages['danger'] = "Commentaire requis.";
            }

            if (empty($error_messages)) {
                $comment = new Comment();
                $comment->setContent($userComment["content"])
                    ->setUserId($user->getIdUser())
                    ->setArticleId($idArticle);
                try {
                    $commentDao = new CommentDao();
                    $commentDao->new($comment);
                    //Si une exception PDO est levée on retourne un message d'erreur.
                } catch (PDOException $e) {
                    http_response_code(500);
                    die;
                }
                header("Location: /article/show/" . $idArticle . "#comment" . $comment->getIdComment());
            }
        }
        //On affiche le formulaire
        require_once implode(DIRECTORY_SEPARATOR, [VIEW, 'comment', 'new.html.php']);
    }


    /**
     * Efface un commentaire en fonction de son ID.
     *
     * @param int $id Identifiant du commentaire à effacer.
     */
    public function delete($idComment,$idArticle)
    {
        //On vérifie si l'utilisateur est bien connecté.
        if (!isset($_SESSION['user'])) {
            header('Location: /');
            die;
        }

        try {
            $commentDao = new CommentDao();
            $commentDao->delete($idComment);
            //Si une exception PDO est levée on retourne un message d'erreur.
        } catch (PDOException $e) {
            http_response_code(500);
            die;
        }

        header(sprintf('Location: /article/show/%d', $idArticle));
        die;
    }

    /**
     * Edite un commentaire en fonction de son ID.
     *
     * @param int $id Identifiant du commentaire à éditer.
     */
    public function edit($idComment,$idArticle)
    {
        //On vérifie si l'utilisateur est bien connecté.
        if (!isset($_SESSION['user'])) {
            header('Location: /');
            die;
        }
        $btnName = "Edit";

        $requestMethod = filter_input(INPUT_SERVER, 'REQUEST_METHOD');

        if ('POST' === $requestMethod) {

            //vérification du post
            $args = [
                'content' => []
            ];
            $comment_post = filter_input_array(INPUT_POST, $args);

            if (isset($comment_post['content'])) {

                if (empty(trim($comment_post['content']))) {
                    $error_messages['danger'][] = "Commentaire requis.";
                }

                if (!isset($error_messages)) {
                    $comment = new Comment();
                    $comment->setContent($comment_post['content'])
                        ->setIdComment($idComment);
                    try {
                        $commentDao = new CommentDao();
                        $commentDao->edit($comment);
                     
                    } catch (PDOException $e) {
                        http_response_code(500);
                        die;
                    }
                    header("Location: /article/show/" . $idArticle . "#comment" . $comment->getIdComment());
                    die;
                }
            }
        }
        if ('GET' === $requestMethod) {
            try {
                $commentDao = new CommentDao();
                $comment = $commentDao->getCommentById($idComment);
            } catch (PDOException $e) {
                http_response_code(500);
                die;
            }
        }
        //On affiche le formulaire
        require_once implode(DIRECTORY_SEPARATOR, [VIEW, 'comment', 'new.html.php']);
    }
}
