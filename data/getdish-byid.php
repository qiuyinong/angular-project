<?php
$id = $_REQUEST['id'];
//跟数据库相连
$conn = mysqli_connect('127.0.0.1', 'root', '', 'kaifanla');
$sql = "SET NAMES UTF8";
mysqli_query($conn, $sql);
$sql = "SELECT name,img,img_l,material,detail,price,id FROM dish WHERE id='$id'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result, MYSQL_ASSOC);
echo json_encode($row);
?>