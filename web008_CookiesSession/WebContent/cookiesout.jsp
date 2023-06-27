<!-- 쿠키 가져오기 -->

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
		// 원격으로 멀리 떨어져있는 브라우저에서 쿠키를 받아오므로 쿠키배열을 한번에 가져온다. 
		
		Cookie[] cookies = request.getCookies();
		
	%>
	
	<%= cookies.length %>개
	브라우저에서 쿠키를 가져옵니다.  
	<hr color = "lightgray">
	
	<%
		// 쿠키 리스트 보이기 
		for (Cookie c : cookies) {
			if (!c.getName().equals("JSESSIONID")) {
			out.println(c.getName() + " : " + c.getValue() + "<br>");
			}
		}
	%>
	
</body>
</html>