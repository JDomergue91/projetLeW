<?php

session_start();

// Chargement des pages
// include ("allInclude.php");


$page = isset($_GET['page']) ? $_GET['page'] : 'home';

switch ($page) {

    case 'home':
        $controller = './pages/accueil.php';
        break;

    case 'login':
        $controller = './pages/connexion.php';
        break;
        
    case 'login-action':
        check_login(trim($_POST['email-username']), trim($_POST['password']));
        break;    
    case 'logout':
        logout();
        break;  
        
    case 'mentions-legales':
        $controller = './pages/mentionsLegales.php';
        break;
        
    
            
    default:
        $controller = './pages/404.php';
        break;
}

include $controller;
