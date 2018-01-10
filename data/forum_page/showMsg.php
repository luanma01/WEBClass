<?php
header("Content-Type:application/json");
$conn=mysqli_connect("127.0.0.1","admin","","baixiao",3306);
$sql="SET NAMES UTF8";
$result=mysqli_query($conn,$sql);

$result=mysqli_query($conn,"SELECT * FROM blog ORDER BY id DESC LIMIT 0,6");
$output=mysqli_fetch_all($result,MYSQLI_ASSOC);
if($result==false) return "false";
echo json_encode($output);
?>