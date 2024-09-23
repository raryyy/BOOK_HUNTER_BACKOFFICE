<?php

// ROUTES USERS
if (isset($_GET['users'])):
    include_once '../app/routers/users.php';

// ROUTES BOOKS
elseif (isset($_GET['books'])):
    include_once '../app/routers/books.php';

// ROUTE PAR DÉFAUT
// PATTERN: /
// CTRL: pagesController
// ACTION: home
else:
    include_once "../app/controllers/pagesController.php";
    \App\Controllers\PagesController\homeAction($connexion);
endif;
