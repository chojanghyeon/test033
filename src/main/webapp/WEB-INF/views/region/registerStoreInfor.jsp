<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>가게 상세 정보</title>
</head>
<body>

<h1>가게 상세 정보 등록하기</h1><hr>

<form action="registerstoreinfor.do">
가게명 : <h2>${store.store_name }</h2><br>
본사 보증금 : <input type="text" name="company_money"><br>
가맹비 : <input type="text" name="join_money"><br>
교육비 : <input type="text" name="edu_money"><br>
인테리어 : <input type="text" name="interior_money"><br>
장비 : <input type="text" name="equipment_money"><br>
기타 : <input type="text" name="other_money"><br>

<button type="submit">등록하기</button>
</form>
	

</body>
</html>