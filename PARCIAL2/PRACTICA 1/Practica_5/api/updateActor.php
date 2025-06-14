<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD']  |== 'PUT'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    }

    //conectar a la BD sakila 
    require 'coexionSakila.php';

    $data = json_decode(file_get_contents('php://input'), true);
    $actor_id = intval($input["actor_id"]);
    $fist_name = $conn->real_escape_string($input["first_name"]);
    $last_name = $conn->real_escape_string($input["last_name"]);

    $query = "UPDATE actor SET first_name = ?, last_name = ?, last_update = NOW() WHERE actor_id = ?";

    $st = $conn->prepare($query);

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "error en la consulta" . $conn->error]);
        exit();
    }

    $st->bind_param("ssi", $first_name, $last_name, $actor_id);

    if($st->affected_rowa > 0){
        echo json_encode(["message" => "actor actualizado correctamente"]);
    }else{
        http_response_code(400);
        echo json_encode(["error" => "error al ejecutar" , $st->error]);
    }
    $st->close();
    $conn->close();
?>



