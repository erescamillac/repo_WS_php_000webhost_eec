<?php
//This file will get the values when you click any of the ON/OFF buttons or change buttons on the index.php file
//We get that value and send it to the datapase table and by that update the values
// -- control_leds.php --
$valor = $_GET['valor'];		//Get the value
// valor = 1 : ENCENDIDO
// valor = 0 : APAGADO
$num_led = $_GET['num_led'];			//Get the id of the unit where we want to update the value
// num_led = {1-5}
// $column = $_GET['column'];		//Which coulumn of the database, could be the RECEIVED_BOOL1, etc...

//connect to the database
include("database_connect.php"); //We include the database_connect.php which has the data for the connection to the database

// Check the connection
if (mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$column_names = array(
    "RECEIVED_BOOL1",
    "RECEIVED_BOOL2",
    "RECEIVED_BOOL3",
    "RECEIVED_BOOL4",
    "RECEIVED_BOOL5"
);

$column = $column_names[$num_led - 1];

//Now update the value sent from the post (ON/OFF, change or send button)
mysqli_query($con,"UPDATE ESPtable2 SET $column = '{$valor}'
WHERE id=99999");

// go back to the interface
// header("location: index.php");
?>