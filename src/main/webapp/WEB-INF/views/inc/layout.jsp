<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  @import url("http://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.5.4/bootstrap-select.min.css")
  </style>
<title>든든한 사업파트너 JHS BP</title>
	<script>
		
	/* 시큐리티 권한실패 사유별 alert창 띄워주기 + Session값 초기화 */
		function error_check(){
			var login_error= '${login_error}';
			console.log(login_error);
			console.log('a' + '<%=request.getParameter("login_error") %>')
			
			if(login_error == 'fail'){
				<%request.getSession().setAttribute("login_error", "");%>
				alert('로그인 실패. 다시 로그인해 주세요')
			}else if(login_error == 'logout'){
				<%request.getSession().setAttribute("login_error", "");%>
				alert('로그인 후 이용 바랍니다!')
			}else if(login_error == 'denied'){
				<%request.getSession().setAttribute("login_error", "");%>
				alert('권한 부족입니다. 관리자에게 문의하세요!')
			}
		
		}
	
	</script>
</head>
<body>

<div class="switcher"></div>

<tiles:insertAttribute name="header"/>
<tiles:insertAttribute name="content"/>
<tiles:insertAttribute name="footer"/>
</body>
</html>