<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
	$(function(){

		$("#dongselect").change(function(){
		
			var dong_name = $("#dongselect option:selected").text();

			$.ajax(
					{
					url : "dongselect.do?adddetail_dong="+dong_name,
					datatType : "json",
					success : function(data){
						$("#gong").html(data.add_publicprice);
						$("#max").html(data.add_maxprice);
						$("#min").html(data.add_minprice);
						$("#aver").html(data.add_price);
						}
					 }
				  )
		})
		
	})
	
</script>

<body>

<h1 style="text-align: center">서울시 ${add_ku }의 정보</h1><br>

<select id="dongselect">
	<option>동을 선택하세요</option>
	<c:forEach items="${dongArray}" var="dong">
		<option>${dong}</option>
	</c:forEach>
</select>


<p style="float:right">(단위 : 원)</p>
<table class="table table-bordered">
<tr><th>공시지가</th><td id="gong"></td></tr>
<tr><th>공시 최대값</th><td id="max"></td></tr>
<tr><th>공시 최소값</th><td id="min"></td></tr>
<tr><th>평당 평균 지가</th><td id="aver"></td></tr>

</table>

</body>
</html>