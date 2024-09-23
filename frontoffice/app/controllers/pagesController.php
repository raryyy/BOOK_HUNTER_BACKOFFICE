<?php

namespace App\Controllers\PagesController;

function homeAction(\PDO $connexion)
{
    // Charge les derniers books dans $books
    include_once "../app/models/booksModel.php";
    $books = \App\Models\BooksModel\findAll($connexion);

    // Charge les derniers authors dans $authors
    include_once "../app/models/authorsModel.php";
    $authors = \App\Models\AuthorsModel\findAll($connexion);

    // Charge la vue dans $content
    global $content, $title;
    $title = "Latest Books and authors";
    ob_start();
    include "../app/views/pages/home.php";
    $content = ob_get_clean();
}
