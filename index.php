<?php

// Liste des pages disponibles

$pages = [
    
    "accueil" => "./pages/accueil.php",
    "allCollections" => "./pages/affichageAllCollections.php",
    "contact" => "./pages/contact.php",
    "connexion" => "./pages/connexion.php",
    
];

// Page par defaut si le parametre "page" n'est pas présent dans l'URL

$defautlPage = "accueil";

// Récupération du parametre "page"

$page = isset($_GET["page"]) ? $_GET["page"] : $defautlPage;

// Vérification de la validité du parametre "page"

if (!array_key_exists($page, $pages)) {

    //affichage de la page d'erreuyr 404
    header("HTTP/1.0 404 Not Found");
    include "404.php";
    exit();
}

// Inclusion de la page demandée

include $pages[$page];