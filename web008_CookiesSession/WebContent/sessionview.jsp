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
	
	이름이 view인 세션값 확인 : <%= session.getAttribute("view") %>
	<hr color = "red">
	
	<%
		if (session.getAttribute("view") == null) {
			out.print("<h3>방문한 적 없음</h3>");
		} else {
			out.print("<h3>방문한 적 있음</h3>");
		}
		
	%>
	
	
</body>
</html>