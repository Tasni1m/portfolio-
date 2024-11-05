<?php
function dbConnect()
{
    try {
        $bd = new PDO('mysql:host=localhost;dbname=tas;charset=utf8', 'root', '', [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]);
    } catch (Exception $e) {
        die('Erreur : ' . $e->getMessage());
    }
return $bd;
}