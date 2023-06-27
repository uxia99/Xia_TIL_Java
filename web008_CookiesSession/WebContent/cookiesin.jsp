<!-- 쿠키 심기 --> 

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
		Cookie c1 = new Cookie("name", "uxia"); // new Cookie();에 에러가 나는 이유 : 생성자가 없다
		// 이름(name)과 값(value) 순서대로 넣어주기 
		// 통장 만들 때처럼 아무 값 없이 만들어주지 않음 
		Cookie c2 = new Cookie("age", "25"); // value는 반드시 string으로 
		
		response.addCookie(c1);
		response.addCookie(c2);
		
	%>
	
	브라우저에 쿠키를 심었습니다.
	<hr color = "lightgray">
	<a href = "cookies.jsp">쿠키 가지고오기</a>
</body>
</html>