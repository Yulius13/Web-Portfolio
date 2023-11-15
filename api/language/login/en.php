<?php
    include("../../../php/const.php");
    
    
    $BD="jacm";

    $connexion= new mysqli($host,$usuario, $password, $BD);

    if($connexion->connect_error){
        die ("Conexion no establecida".$connexion->connect_error);
    }

    header("Content-Type: application/json");

    $met=$_SERVER['REQUEST_METHOD'];
    //Busca  y almacena el ultimo valor de la URL, sirve para saber cual es el Id que se va a borrar
    $path =isset($_SERVER['PATH_INFO'])?$_SERVER['PATH_INFO']:'/';
    $seachId = explode('/', $path);
    $id=($path!=='/')? end ($seachId):null;

    

    switch($met){

        // SELECT
        case 'GET':
            //echo "Consulta de registros - get ";
            selectionQuery($connexion, $id);
            break;
        //INSERT
         case 'POST':
            //echo "Insertar registros - POST ";
            insertQuery($connexion);
            break;
        //UPDATE
         case 'PUT':
            updateQuery($connexion, $id);
            //echo "Edicion de registros - PUT ";
            break;
        //DELETE
         case 'DELETE':
            //echo "Borrado de registros - DELETE ";
            deleteQuery($connexion, $id);
            break;
            
        default:
        echo "Metodo no permitido";
    }
    //GET
    function selectionQuery($connexion, $id){
        $sql= ($id===null)?"SELECT * FROM loginen":"SELECT * FROM loginen WHERE id=$id";
        $result= $connexion->query($sql);

        if($result){
            $datos=array();
            while($row =$result->fetch_assoc()){
                $datos[]= $row;
            }

            echo json_encode($datos);
        }
    }

    function insertQuery($connexion){
        $dato =json_decode(file_get_contents('php://input'),true);

        $signInTitle=$dato['signInTitle'];
        $signInParagraph=$dato['signInParagraph'];
        $signInEmail=$dato['signInEmail'];
        $signInPw=$dato['signInPw'];//
        $signInPw2=$dato['signInPw2'];//
        $signInBtn=$dato['signInBtn'];//
        $signInInfTittle=$dato['signInInfTittle'];//
        $signInInfParagraph=$dato['signInInfParagraph'];//
        $signInInfBtn=$dato['signInInfBtn'];//
        $signUpTitle=$dato['signUpTitle'];//
        $signUpEmail=$dato['signUpEmail'];//
        $signUpPw=$dato['signUpPw'];//
        $signUpBtn=$dato['signUpBtn'];//
        $signUpInfTittle=$dato['signUpInfTittle'];
        $signUpInfParagraph=$dato['signUpInfParagraph'];//
        $signUpInfBtn=$dato['signUpInfBtn'];


        $sql= "INSERT INTO loginen (signInTitle, signInParagraph, signInEmail, signInPw, signInPw2, signInBtn, signInInfTittle, signInInfParagraph, signInInfBtn, signUpTitle, signUpEmail, signUpPw, signUpBtn, signUpInfTittle, signUpInfParagraph, signUpInfBtn) VALUES ('$signInTitle','$signInParagraph','$signInEmail','$signInPw','$signInPw2','$signInBtn',' $signInInfTittle','$signInInfParagraph','$signInInfBtn','$signUpTitle','$signUpEmail','$signUpPw',' $signUpBtn',' $signUpInfTittle','$signUpInfParagraph','$signUpInfBtn')";
        $resultado =$connexion->query($sql);

        if($resultado){
            $dato['id'] = $connexion -> insert_id;
            echo json_encode($dato);
        }else{
            echo json_encode(array('error'=>'Error al crear registro'));
        }
    }
    function deleteQuery($connexion, $id){
        echo "El id a borrar es: ".$id; 

        $sql= "DELETE FROM loginen WHERE id =$id";
        $resultado =$connexion->query($sql);

        if($resultado){
            $dato['id'] = $connexion -> insert_id;
            echo json_encode(array('mensaje'=>'Regristro eliminado'));
        }else{
            echo json_encode(array('error'=>'Error al borrar el registro'));
        }
    }

    function updateQuery($connexion, $id){
         $dato =json_decode(file_get_contents('php://input'),true);

        $signInTitle=$dato['signInTitle'];
        $signInParagraph=$dato['signInParagraph'];
        $signInEmail=$dato['signInEmail'];
        $signInPw=$dato['signInPw'];
        $signInPw2=$dato['signInPw2'];
        $signInBtn=$dato['signInBtn'];
        $signInInfTittle=$dato['signInInfTittle'];
        $signInInfParagraph=$dato['signInInfParagraph'];
        $signInInfBtn=$dato['signInInfBtn'];
        $signUpTitle=$dato['signUpTitle'];
        $signUpEmail=$dato['signUpEmail'];
        $signUpPw=$dato['signUpPw'];
        $signUpBtn=$dato['signUpBtn'];
        $signUpInfTittle=$dato['signUpInfTittle'];
        $signUpInfParagraph=$dato['signUpInfParagraph'];
        $signUpInfBtn=$dato['signUpInfBtn'];

        $sql= "UPDATE loginen SET signInTitle = '$signInTitle', signInParagraph = '$signInParagraph', signInEmail = '$signInEmail', signInPw = '$signInPw', signInPw2 = '$signInPw2', signInBtn = '$signInBtn', signInInfTittle = '$signInInfTittle', signInInfParagraph = '$signInInfParagraph', signInInfBtn = '$signInInfBtn', signUpTitle = '$signUpTitle',  signUpEmail = '$signUpEmail', signUpPw = '$signUpPw', signUpBtn = '$signUpBtn', signUpInfTittle = '$signUpInfTittle', signUpInfParagraph = '$signUpInfParagraph', signUpInfBtn = '$signUpInfBtn' WHERE id = $id" ;
        $resultado =$connexion->query($sql);

         if($resultado){
            $dato['id'] = $connexion -> insert_id;
            echo json_encode(array('mensaje'=>'Regristro actualizado'));
        }else{
            echo json_encode(array('error'=>'Error al actualizar el registro'));
        }
    }
?>
