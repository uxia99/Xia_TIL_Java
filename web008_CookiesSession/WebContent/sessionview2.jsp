<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	이름이 name인 세션값 확인 : <%= session.getAttribute("name") %><br>
	이름이 age인 세션값 확인 : <%= session.getAttribute("age") %>
	<hr color = "red">
	
	<%
		// Object age = session.getAttribute("age");
		int age = (int)session.getAttribute("age"); // 연산을 위해서는 Object을 바꿔줘야함 
		// int <--오토언박싱-- Integer <--강제형변환(다운캐스팅)-- Object
		age += 1; 
	%>
	
	내년 나이는 <%= age %>세 입니다.
	
</body>
</html>