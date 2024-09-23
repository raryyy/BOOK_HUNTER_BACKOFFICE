<?php

namespace App\Models\BooksModel;

use \PDO;

function findAll(PDO $connexion): array
{

    $sql = "SELECT *
            FROM books
            ORDER BY created_at DESC
            LIMIT 3;";

    return $connexion->query($sql)->fetchAll(PDO::FETCH_ASSOC);
}

function findOneById(PDO $connexion, $id): array
{
    $sql = "SELECT*
           FROM books
           WHERE id = :id;";

    $rs = $connexion->prepare($sql);
    $rs->bindValue(':id', $id, PDO::PARAM_INT);
    $rs->execute();

    return $rs->fetch(PDO::FETCH_ASSOC);
}
