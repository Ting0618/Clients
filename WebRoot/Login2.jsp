<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆</title>
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="assets/css/style.css" />


</head>
<body class="login_body">

<div class="login_div">
	<div class="col-xs-12 login_title">登录</div>
	<form class="login" action="login" method="post" name="loginform" id="login">
		<div class="nav">
			<div class="nav login_nav">
				<div class="col-xs-4 login_username">
					<span>账号:</span>
				</div>
				<div class="col-xs-6 login_usernameInput">
					<input type="text" name="account" id="name" value="" placeholder="&nbsp;&nbsp;用户名/手机号" onchange="checkAccount()" onFocus="hide()" />
				</div>
				<div class="col-xs-1 ok_gou">
					√
				</div>
				<div class="col-xs-1 error_cuo">
					×<span id="checka" style="font-size: 14px;color: red;"></span>
				</div>
			</div>
			<div class="nav login_psdNav">
				<div class="col-xs-4">
					密码:
				</div>
				<div class="col-xs-6">
					<input type="password" name="password" id="psd" value="" placeholder="&nbsp;&nbsp;密码" onBlur="" />
				</div>
				<div class="col-xs-1 ok_gou">
					√
				</div>
				<div class="col-xs-1 error_cuo">
					×
				</div>
			</div>
			<div class="col-xs-12 login_btn_div">
				<button class="sub_btn" id="login" >登录</button>
			</div>
		</div>
	</form>
</div>

<div style="text-align:center;">
</div>

<script src="assets/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script type="text/javascript">
/*$(function() {
	$('#login').click(function() {
		var name_state = $('#name');
		var psd_state = $('#psd');
		var name = $('#name').val();
		var psd = $('#psd').val();
		if (name == '') {
			name_state.parent().next().next().css("display", "block");
			return false;
		} else if (psd == '') {
			name_state.parent().next().next().css("display", "none");
			psd_state.parent().next().next().css("display", "block");
			return false;
		} else {
			name_state.parent().next().next().css("display", "none");
			psd_state.parent().next().next().css("display", "none");
			$('.login').submit();
		}
	});
})

function ok_or_errorBylogin(l) {
	var content = $(l).val();
	if (content != "") {
		$(l).parent().next().next().css("display", "none");
	}
}


function barter_btn(bb) {
	$(bb).parent().parent().fadeOut(1000);
	$(bb).parent().parent().siblings().fadeIn(2000);
}*/


function checkAccount(){
var x=document.forms["loginform"]["account"].value;
if(x.length !=6 ){
document.getElementById("checka").innerHTML = "*账号是必须是六位数字";
	}
}

function hide(){
	document.getElementById("checka").innerHTML = " ";
}

</script>
</body>
</html>