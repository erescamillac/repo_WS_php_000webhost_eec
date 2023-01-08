<?php
// -- consultar_ultima_temperatura.php
include 'database_connect.php';

// $codigo_barras = $_GET['codigo_barras'];
$id = 99999;


$consulta = "SELECT SENT_NUMBER_1 FROM ESPtable2 WHERE id=99999";
$resultado = $con->query($consulta);

// Contar número de FILAS ::
// SI numFilas >= 1 -->> entonces USER correct (DEJAR PASAR)...
// otherwise :: [Block_Access] 

$contador = 0;

while($fila = $resultado->fetch_array()){
    $contador++;
    // $registro[] = array_map('utf8_encode', $fila);
    $registro[] = $fila;
}


header("Content-Type: application/json; charset=UTF-8");

if($contador >= 1){
    // almenos 1 REGISTRO Válido (El Producto esta DADO DE ALTA)
    // echo json_encode($registro);
    $respuesta = ['code' => 100, 
                    'ultima_temperatura' => $registro[0]['SENT_NUMBER_1']
                    ];

    $responseArray = [];
    $responseArray[0] = $respuesta;
    
    echo json_encode($responseArray);
}else{
    // El Producto NO está REGISTRADO en BD
    $respuesta = ['code' => -100, 
                    'ultima_temperatura' => $registro[0]['SENT_NUMBER_1']
                   ];
    // echo json_encode($registro);

    $responseArray = [];
    $responseArray[0] = $respuesta;

    echo json_encode($responseArray);
}


$resultado->close();

?>