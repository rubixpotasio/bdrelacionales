<?php
    header("Corrent-Type: application/json");
    header("Acces-Control-Allow-Origin: *");

    $usuario=[
        ["id" => 1, "nombre" => "Rubi Felix", "correo" => "papita@gmail.com"],
        ["id" => 1, "nombre" => "Sergio Zazueta", "correo" => "poptasio@gmail.com"],
        ["id" => 1, "nombre" => "Horus Zepeda", "correo" => "persona@gmail.com"],
    ];

    echo json_encode($usuarios);
?>
