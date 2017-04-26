<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가게 등록</title>
</head>
<body>

<h1>가게 등록하기</h1>

<form action="register_store.do">
 가게 이름 : <input type="text" name="store_name"><br>
구분 : <select name="store_type"><br>
	<option>구분</option>
	<option name="familymart">편의점</option>
	<option name="cafe">카페</option>
	</select><br>
가게 이미지 : <input type="text" name="store_image"><br>
<button type="submit">등록하기</button>
</form>
</body>
</html>