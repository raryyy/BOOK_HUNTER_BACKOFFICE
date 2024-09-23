<?php

use \App\Controllers\UsersController;

include_once '../app/controllers/usersController.php';

switch ($_GET['users']):
    case 'verification':
        UsersController\verificationAction($connexion, [
            'name' => $_POST['name'],
            'password' => $_POST['password']
        ]);
        break;
    default:
        UsersController\loginAction();
        break;
endswitch;
