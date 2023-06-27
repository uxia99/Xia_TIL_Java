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
		
		
	%>
	
	이름이 view인 세션값 확인 : <%= session.getAttribute("id") %>
	<hr color = "red">
	
	<%
		if (session.getAttribute("id") == null) {
			out.print("<h3>로그인하지 않았음 -> 게스트로 입력</h3>");
		} else {
			out.print("<h3>로그인 되었음 " + session.getAttribute("id") + "님 로그인</h3>");
		}
		
	%>
	
	
</body>
</html>