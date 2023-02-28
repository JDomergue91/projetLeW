<?php

session_start();

// Chargement des pages
// include ("allInclude.php");


$page = isset($_GET['page']) ? $_GET['page'] : 'accueil';

switch ($page) {

    case 'accueil':
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

    case 'admin':
        $controller = './pages/admin/admin-main.php';
        break;
    case 'admin-category-items':
        $controller = './pages/admin/admin-category_items.php';
        break;
    case 'admin-collections':
        $controller = './pages/admin/admin-collections.php';
        break;
    case 'admin-conditions':
        $controller = './pages/admin/admin-conditions.php';
        break;
    case 'admin-countries':
        $controller = './pages/admin/admin-countries.php';
        break;
    case 'admin-items':
        $controller = './pages/admin/admin-items.php';
        break;
    case 'admin-users':
        $controller = './pages/admin/admin-users.php';
        break;
        
    
  
    default:
        $controller = './pages/404.php';
        break;
}

include $controller;
