<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
	
	$(function(){
		$("#store_name").click(function(){
			$.ajax(
					{
						url : "storeyumu.do?store_name="+$("#store_name").html(),
						dataType : "json",
						success : function(data){
							console.log(data);
						
						}
					}
				  )
			//alert($("#store_name").html());
		
			
		})
	})

</script>
<body>
<h1>가게 리스트</h1>
<table border="1">
<tr><td>가게명</td><td>구분</td><td>가게 이미지</td></tr>
<c:forEach items="${storelist}" var="storelist">
<tr><td id="store_name">${storelist.store_name }</td><td>${storelist.store_type }</td><td>${storelist.store_image }</td></tr>
</c:forEach>
</table>

</body>
</html>