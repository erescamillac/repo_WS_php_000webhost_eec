<?php
//-- test_fecha_hora_actual_echo.php

// $currentDateTimePHP = date('m/d/Y h:i:s a', time());
// America/Mexico_City
// date_default_timezone_set('Australia/Melbourne');
date_default_timezone_set( 'America/Mexico_City' );

$currentDateTimePHP = date('d/m/Y h:i:s a', time());

echo $currentDateTimePHP;

?>