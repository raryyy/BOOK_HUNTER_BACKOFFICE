<?php

use \App\Controllers\BooksController;

include_once '../app/controllers/booksController.php';

switch ($_GET['books']):
    case 'show':
        BooksController\showAction($connexion, $_GET['id']);
        break;
    default:
        BooksController\indexAction($connexion);
        break;
endswitch;
