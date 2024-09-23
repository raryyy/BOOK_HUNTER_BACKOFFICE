<?php

namespace App\Controllers\BooksController;

use \PDO, \App\Models\BooksModel;

function showAction(PDO $connexion, int $id)
{
    //Je vais demander des données aux modèles
    include_once '../app/models/booksModel.php';
    $book = BooksModel\findOneById($connexion, $id);

    //Je charge la vue index.php des books dans $content
    global $content, $title;
    $title = $book['title'];
    ob_start();
    include '../app/views/books/show.php';
    $content = ob_get_clean();
}

function indexAction(PDO $connexion) {}
