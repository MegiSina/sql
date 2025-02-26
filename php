<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "testdb";

try {
    // Krijo lidhjen me PDO
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Cilësimet e PDO për gabimet
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Lidhja ka qenë e suksesshme!";
}
catch(PDOException $e) {
    echo "Lidhja ka dështuar: " . $e->getMessage();
}
?>
