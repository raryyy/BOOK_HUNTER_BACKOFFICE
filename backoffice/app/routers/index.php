<?php


// ROUTES DES CATEGORIES
if (isset($_GET['categories'])):
    include_once '../app/routers/categories.php';

// ROUTE PAR DEFAUT: dashboard du backoffice
// PATTERN: /
// CTRL: pagesController
// ACTION: dashboard
// VIEW: pages/dashboard.php
else:
    include_once "../app/controllers/pagesController.php";
    \App\Controllers\PagesController\dashboardAction();
endif;
