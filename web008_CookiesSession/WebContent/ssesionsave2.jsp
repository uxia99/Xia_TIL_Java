<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 세션 설정
		session.setAttribute("name", "uxia"); // name 부분은 무조건 Spring, value 부분은 Object라 다 가능함 
		// String --> Object : 아래(작)에서 위(큰)로, 자동으로 String이 Object로 변하는 '자동형변환', 'UpCasting'
		session.setAttribute("age", 25);
		// int(기본형) --오토박싱--> Integer(참조형)_Object의 자식 --> Object 
		
	%>
	
	세션값을 서버에 저장했습니다.
	
	<hr color = "red">
	<a href = "sessionview2.jsp">세션값 보기</a>
</body>
</html>