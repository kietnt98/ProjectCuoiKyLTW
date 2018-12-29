<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url var="home" value="/" scope="request"/>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Đăng nhập</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="${home}View/Assets/css/animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="${home}View/Assets/css/styleDN.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>

<body>
	<div class="container">
		<div class="top">
			<h1 id="title" class="hidden">Test365.vn</h1>
		</div>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<h2>Log In</h2>
			</div>
			<form  action="LoginController" method="post">
			<label for="username" >Username</label>
			<br/>
			<input type="text" id="username" name="username">
			<br/>
			<span id="loiusername" style="color: red"></span>
			<br/>
			<label for="password">Password</label>
			<br/>
			<input type="password" id="password" name="password">
			<br/>
			<span id="loipassword" style="color: red"></span>
			<br/>
			<button type="submit" id="submit">Sign In</button>
			<br/>
			</form>
		<p class="small"><a href="#">Forgot your password?</a></p>
		</div>
	</div>
</body>

<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>
<script type="text/javascript">
		$('#submit').click(function () {
			var loi = 0;
			if (($('#username').val() == "")) {
				$('#loiusername').text('*Vui lòng nhập tên đăng nhập');
				loi++;
			}
			else
				$('#loiusername').text('');
			if (($('#password').val() == "")) {
				$('#loipassword').text('*Vui lòng nhập password');
				loi++;
			}
			else
				$('#loipassword').text('');
			if (loi != 0)
				return false;
			return true;
		})
	</script>
</html>