<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
body { padding-top:30px; }
.form-control { margin-bottom: 10px; }
</style>
<script type="text/javascript">
	
	$(function(){
		
		var randomnum = 0;
		var confirm = false;
		var idcheck = false;
		var pwdcheck = false;
		
		$("#id_check").click(function(){
			
			$.ajax({
				url : "id_check.do?user_id="+$("#user_id").val(),
				dataType : "json",
				success : function(data){
					console.log(data);
					if(data.idcheck == false){
						alert("중복된 아이디입니다");
						return false;
					}else{
						alert("확인되었습니다");
						idcheck = true;
					}
				}
			})
		})
		
		$("#email_confirm").click(function(){
			
			$.ajax({
					url : "confirm_email.do?user_id="+$("#user_id").val(),
					dataType : "json",
					success : function(data){
					 	alert("메일이 발송되었습니다");
					 	console.log(data);
					 	randomnum = data.random;
					}
			})
		})
		
		$("#confirm_check").click(function(){
			if($("#confirm_num").val() != randomnum){
				alert("인증번호를 확인해주세요");
				return false;
			}else{
				alert("확인되었습니다");
				confirm = true;
			}
		})
		
		$("#joinbtn").click(function(){
			if(idcheck == false){
				alert("아이디를 확인해주세요");
				return false;
			}else if(pwdcheck == false){
				alert("비밀번호가 같지 않습니다");
				return false;
			}else if(confirm == false){
				alert("인증을 확인해주세요");
				return false;
			}
		})
	})

</script>
</head>
<body>
<h1>회원가입</h1><hr>
<div class="container col-xs-12 col-sm-12" style="margin: 0 auto;">
        <div class="container col-xs-12 col-sm-12 col-md-4 well well-sm">
            <legend><a href="http://www.jquery2dotnet.com"><i class="glyphicon glyphicon-globe"></i></a> Sign up!</legend>
            <form action="join2.do" method="post" class="form" role="form">
            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <input class="form-control" name="user_name" placeholder="성명을 입력하세요" type="text"
                        required autofocus />
                </div>
            </div>
            <input class="form-control" id="user_id" name="user_id" placeholder="이메일을 입력하세요" type="email" />
            <button type="button" id="id_check" class="btn btn-danger">아이디 중복확인</button>
            <button type="button" id="email_confirm" class="btn btn-default">인증번호 전송</button>
            <input class="form-control" id="confirm_num"  placeholder="인증번호를 입력하세요">
            <button type="button" id="confirm_check" class="btn btn-success">인증번호 확인</button>
            <input class="form-control" name="user_pw" placeholder="비밀번호를 입력하세요" type="password" />
            <input class="form-control" id="pw_confirm" placeholder="비밀번호를 재입력하세요" type="password" />
           
           	<input class="form-control" name="user_birth">
           
            <label for="">생년월일</label>
            <div class="row">
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                    <option>YEAR</option>
						<c:forEach begin="1950" end="2017" var="year">
							<option name="">${year}</option>
						</c:forEach>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                    <option>MONTH</option>
                    <c:forEach begin="1" end="12" var="month">
                        <option>${month }</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-xs-4 col-md-4">
                    <select class="form-control">
                     	<option>DAY</option>
                        <c:forEach begin="1" end="31" var="day">
                        	<option>${day }</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
          
            <br />
            <br />
            <button class="btn btn-lg btn-primary btn-block" id="joinbtn" type="submit">
             	   회원가입</button>
            </form>
        </div>
</div>

</body>
</html>