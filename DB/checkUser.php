<?php 
 if(!$_SESSION['userAdmin']) {
     header('LOCATION: http://localhost:8081/eshop/admin/');
 }
?>

