<?php

use \App\Controllers\CategoriesController;

include_once '../app/controllers/categoriesController.php';

switch ($_GET['categories']):
    case 'destroy':
        CategoriesController\destroyAction($connexion, $_GET['id']);
        break;
    default:
        CategoriesController\indexAction($connexion);
        break;
endswitch;
