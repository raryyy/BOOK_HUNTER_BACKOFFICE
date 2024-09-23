<?php

namespace App\Controllers\CategoriesController;

use \App\Models\CategoriesModel, \PDO;

include_once '../app/models/categoriesModel.php';

function indexAction(PDO $connexion)
{
    $categories = CategoriesModel\findAll($connexion);
    global $title, $content;
    $title = "Categories";
    ob_start();
    include '../app/views/categories/index.php';
    $content = ob_get_clean();
}

function destroyAction(PDO $connexion, int $id)
{
    $response = CategoriesModel\destroyOneById($connexion, $id);
    header('Location: ' . BASE_ADMIN_URL . 'categories');
}
