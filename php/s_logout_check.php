<?php
 
	session_start();
	session_destroy();
	setcookie('username', '', time()-10, '/');
	header("location:../views/login.php");

?>