  <?php
     header("Content-Type: application/json");
     
     if($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo PUT es permitido']);
     }

     //conectar a la BD sakila
     require 'conexionSakila.php';

     $input = json_decode(file_get_contents('php://input'), true);
     $actor_id = $input['actor_id'];
     $first_name = $conn->real_escape_string($input['first_name']);
     $last_name = $conn->real_escape_string($input['last_name']);
     $query = "UPDATE actor SET first_name = ?, last_name = ?, last_update = NOW() WHERE actor_id = ?";

     $st = $conn-> prepare($query);

     if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error" . $conn->error]);
        exit();
    }

    $st->bind_param("ssi", $first_name, $last_name, $actor_id);

    if($st->execute()){
        if($st->affected_rows > 0){
            echo json_encode(["mensaje" => "Actor insertado correctamente", "actor_id" => $st->insert_id]);
        } 
    } else {
         http_response_code(500);
         echo json_encode(["error" => "Fallo la insercion" . $st->error]);
    }

    $st->close();
    $conn->close();

?>