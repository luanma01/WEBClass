<?php
//data/controllers/user.controller.php
//data/init.php
require_once("../init.php");//$conn
function register(){
	global $conn;//引入全局变量
	//从request中获得uname和upwd
	@$uname=$_REQUEST["uname"];
	@$password=$_REQUEST["password"];
	if($uname&&$password){
		//定义SQL语句insert into xz_user...
		$sql="insert into classmate(uname,password) values('$uname','$password')";
		//执行SQL语句获得执行结果
		mysqli_query($conn,$sql);
	}
}
function checkName(){
	global $conn;
	$uname=$_REQUEST["uname"];//从request中获得uname
	if($uname){
		$sql=//定义SQL语句select * from xz_user...
			"select * from classmate where uname='$uname'";
		$result=mysqli_query($conn,$sql);//执行SQL查询
		$users=//获得查询结果
			mysqli_fetch_all($result,1);//MYSQLI_ASSOC
		if(count($users)!=0)//如果查询结果中有数据
			echo "false";//不能使用
		else//否则
			echo "true";//可以使用
	}
}
function login(){
	global $conn;
	//从request中获得uname和upwd
	@$uname=$_REQUEST["uname"];
	@$password=$_REQUEST["password"];
	if($uname&&$password){
		//定义SQL语句: select 
		$sql="select * from classmate where uname='$uname' and binary password='$password'";
		$result=mysqli_query($conn,$sql);//执行查询
		//获得查询结果
		$user=mysqli_fetch_all($result,1);
		if(count($user)!=0){//如果有结果
			session_start();//打开session
			$_SESSION["id"]=$user[0]["id"];
			return true;//登录成功
		}else//否则
			return false;//登录失败
	}
}
function logout(){
	session_start();
	$_SESSION["id"]=null;
}
function isLogin(){
	global $conn;
	session_start();
	@$id=$_SESSION["id"];
	if($id){
		$sql=
			"select uname from classmate where id=$id";
		$result=mysqli_query($conn,$sql);
		$user=mysqli_fetch_all($result,1);
		return ["ok"=>1,"uname"=>$user[0]["uname"]];
	}else
		return ["ok"=>0];
}