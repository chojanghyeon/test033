<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>
@charset "utf-8";

@import
url//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css)
;

div.main {
	background: #0264d6; /* Old browsers */
	background: -moz-radial-gradient(center, ellipse cover, #0264d6 1%, #1c2b5a 100%);
	/* FF3.6+ */
	background: -webkit-gradient(radial, center center, 0px, center center, 100%,
		color-stop(1%, #0264d6), color-stop(100%, #1c2b5a));
	/* Chrome,Safari4+ */
	background: -webkit-radial-gradient(center, ellipse cover, #0264d6 1%, #1c2b5a 100%);
	/* Chrome10+,Safari5.1+ */
	background: -o-radial-gradient(center, ellipse cover, #0264d6 1%, #1c2b5a 100%);
	/* Opera 12+ */
	background: -ms-radial-gradient(center, ellipse cover, #0264d6 1%, #1c2b5a 100%);
	/* IE10+ */
	background: radial-gradient(ellipse at center, #0264d6 1%, #1c2b5a 100%);
	/* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#0264d6',
		endColorstr='#1c2b5a', GradientType=1);
	/* IE6-9 fallback on horizontal gradient */
	height: calc(100vh);
	width: 100%;
}

[class*="fontawesome-"]:before {
	font-family: 'FontAwesome', sans-serif;
}

/* ---------- GENERAL ---------- */
* {
	box-sizing: border-box;
	margin: 0px auto;
	&:
	before
	,
	&
	:
	after
	{
	
    
	box-sizing
	:
	 
	border-box;
}

}
body {
	color: #606468;
	font: 87.5%/1.5em 'Open Sans', sans-serif;
	margin: 0;
}

a {
	color: #eee;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

input {
	border: none;
	font-family: 'Open Sans', Arial, sans-serif;
	font-size: 14px;
	line-height: 1.5em;
	padding: 0;
	-webkit-appearance: none;
}

p {
	line-height: 1.5em;
}

.clearfix {
	*zoom: 1; &: before , & : after {
    content : ' ';
	display: table;
}

&
:after {
	clear: both;
}

}
.container {
	left: 50%;
	position: fixed;
	top: 50%;
	transform: translate(-50%, -50%);
}

/* ---------- LOGIN ---------- */
#login form {
	width: 250px;
}

#login, .logo {
	display: inline-block;
	width: 40%;
}

#login {
	border-right: 1px solid #fff;
	padding: 0px 22px;
	width: 59%;
}

.logo {
	color: #fff;
	font-size: 50px;
	line-height: 125px;
}

#login form span.fa {
	background-color: #fff;
	border-radius: 3px 0px 0px 3px;
	color: #000;
	display: block;
	float: left;
	height: 50px;
	font-size: 24px;
	line-height: 50px;
	text-align: center;
	width: 50px;
}

#login form input {
	height: 50px;
}

fieldset {
	padding: 0;
	border: 0;
	margin: 0;
}

#login form input[type="text"], input[type="password"] {
	background-color: #fff;
	border-radius: 0px 3px 3px 0px;
	color: #000;
	margin-bottom: 1em;
	padding: 0 16px;
	width: 200px;
}

#login form input[type="submit"] {
	border-radius: 3px;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	background-color: #000000;
	color: #eee;
	font-weight: bold;
	/* margin-bottom: 2em; */
	text-transform: uppercase;
	padding: 5px 10px;
	height: 30px;
}

#login form input[type="submit"]:hover {
	background-color: #d44179;
}

#login>p {
	text-align: center;
}

#login>p span {
	padding-left: 5px;
}

.middle {
	display: flex;
	width: 600px;
}
</style>
</head>
<body>
	<div class="main">

	<div class="" style="text-align: center;">
	<h1 style="color: white">Business Partner Login</h1>
	</div>
		<div class="container">
			<center>
			
				<div class="middle">
					<div id="login">

						<form action="loginok.do" method="get">

							<fieldset class="clearfix">

								<p>
									<span class="fa fa-user"></span><input type="text"
										name="user_id" Placeholder="아이디를 입력하세요" required>
								</p>
								<!-- JS because of IE support; better: placeholder="Username" -->
								<p>
									<span class="fa fa-lock"></span><input type="password" name="user_pw"
										Placeholder="비밀번호를 입력하세요" required>
								</p>
								
								  <p style="text-align: center; font-size: 10pt; color:red;"><b>${failmessage}</b></p>
								<!-- JS because of IE support; better: placeholder="Password" -->

								<div>
									<span
										style="width: 48%; text-align: left; display: inline-block;">
										<a class="small-text" href="#">Forgot password?</a>
									</span> <span
										style="width: 50%; text-align: right; display: inline-block;"><input
										type="submit" value="로그인"></span>
								</div>

							</fieldset>
							<div class="clearfix"></div>
						</form>

						<div class="clearfix"></div>

					</div>
					<!-- end login -->
					<div class="logo">
						<h4><a href="join.do">회원가입</a></h4>

						<div class="clearfix"></div>
					</div>

				</div>
			</center>
		</div>

	</div>
</body>
</html>