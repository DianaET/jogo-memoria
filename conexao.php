<?php

// instancia objeto PDO, conectando no mysql
	$hostname = 'localhost';
	$username = 'id1721459_root';
	$password = '123456';
	$database = 'id1721459_equipe_bd';

		$conn = new PDO("mysql:host=$hostname;dbname=$database;charset=utf8", $username, $password,
		array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		// echo 'Conexao efetuada com sucesso!';

?>
