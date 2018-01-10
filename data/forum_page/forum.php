<?php
header("Content-Type:application/json");
$conn=mysqli_connect("127.0.0.1","admin","","baixiao",3306);
$sql="SET NAMES UTF8";
$result=mysqli_query($conn,$sql);

$msg=$_REQUEST['msg'];
$uname=$_REQUEST['uname'];
$sql="INSERT INTO blog VALUES(null,'$msg',now(),'$uname')";
$result=mysqli_query($conn,$sql);
if($result===false) return "wrong";
?>