<?php
require("../init.php");//$conn

	$uname=$_REQUEST["uname"];
	$password=$_REQUEST["password"];
	if($uname&&$password){
		//定义SQL语句insert into xz_user...
		$sql="insert into classmate(uname,password) values('$uname','$password')";
		//执行SQL语句获得执行结果
		$result=mysqli_query($conn,$sql);
		if($result===false) echo "false";
		$c=mysqli_affected_rows($conn);
		echo ($c);
	}
?>