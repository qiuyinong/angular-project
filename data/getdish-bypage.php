<?php
$start = $_REQUEST['start'];
$size = 5;//定义每次给客户端多少条
$conn = mysqli_connect('127.0.0.1', 'root', '', 'kaifanla');
$sql = 'SET NAMES UTF8';
mysqli_query($conn, $sql);
$sql = "SELECT id,name,img,material,price FROM dish LIMIT $start,$size";
$result = mysqli_query($conn, $sql);

$outputArr = [];
while($row = mysqli_fetch_array($result, MYSQL_ASSOC)){
	$outputArr[] = $row;
}
echo json_encode($outputArr);

?>