<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



<style type="text/css">
.b{
	height: 100%;
	width: 70%;
	margin:0 auto;
	
}
.fdiv{
	height: 40%;
	width: 70%;
	margin:0 auto;
	margin-top: 250px;
}
</style>
</head>
<body class="b">

<div class="fdiv">
	<form action="login" method="post" name="loginform" id="login">
	账号：<input type="text" name="account" id="account" onchange="checkAccount()" onFocus="hide()"/>
		<s:fielderror> 
		    <s:param>account </s:param>
		</s:fielderror>
	<span id="checka" style="font-size: 14px;color: red;"></span>
	<br>
	密码：<input type="password" name="password" id="password"/>
		<s:fielderror> 
		    <s:param>password </s:param>
		</s:fielderror>
	<div  id="passcheck" ></div><br>
	<button id="con">提交</button>
	</form>
</div>

<script type="text/javascript" src="assets/js/jquery-1.10.1.js"></script>
<script type="text/javascript">
/*jQuery(document).ready(function($){
$("#con").clik(function(){
	alert("111");
	
	$.ajax({
	alert("222");
	url: "passCheck",  
    method: 'POST',  
    dataType: 'text',
    async: true,
    data:{
    	account: $(form).find('#account').val(),  
        password:$(form).find('#password').val()
    	},
    success:function(){
    	alert("success")
    	},
	error:function(){
		alert("error")
		}
	})
})
})*/


function checkAccount(){
var x=document.forms["loginform"]["account"].value;
if(x.length !=6 ){
document.getElementById("checka").innerHTML = "*账号必须是六位数字";
	}
}

function hide(){
	document.getElementById("checka").innerHTML = " ";
}

function checkPass2(){
	alert("checkPass");
}
</script>
</body>
</html>