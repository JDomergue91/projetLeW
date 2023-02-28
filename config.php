<?php

//Parametres de connexion a la base de donnees

$host = "localhost";
$username = "root";
$password = "";
$dbname = "lewcollection";


// Creer une connexion a la base de donnees avec PDO (PHP Data Objects)

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname, $username, $password");

    // Definir le mode d'erreur de PDO sur Exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "connection reussite"l;
} catch(PDOException $e){
        echo "La connexion a echoue : " . $e->getMessage();
    }

    ?>