<?php

if (!isset($_SESSION['user'])) :
    header('Location: ' . BASE_PUBLIC_URL . 'users/login');
endif;
