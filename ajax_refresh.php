<?php
/*
* Author 	: Expert coder
* Email 	: expertcoder10@gmail.com
* Subject 	: Autocomplete using PHP/MySQL and jQuery
*/
// PDO connect *********
function connect() {
    return new PDO('mysql:host=localhost;dbname=search_demo', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
}

$pdo = connect();
$keyword = '%'.$_POST['keyword'].'%';
$sql = "SELECT * FROM country WHERE country_name LIKE (:keyword) ORDER BY country_id ASC LIMIT 0, 10";
$query = $pdo->prepare($sql);
$query->bindParam(':keyword', $keyword, PDO::PARAM_STR);
$query->execute();
$list = $query->fetchAll();
foreach ($list as $rs) {
	// put in bold the written text
	$country_name = str_replace($_POST['keyword'], '<b>'.$_POST['keyword'].'</b>', $rs['country_name']);
	// add new option
    echo '<li onclick="set_item(\''.$rs['country_name'].'\')">'.$country_name.'</li>';
}
?>
