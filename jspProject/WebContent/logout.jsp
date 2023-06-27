<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//로그아웃 처리
    	session.invalidate(); //세션을 끊음.
    	response.sendRedirect("member.jsp");//member.jsp로 자동으로 페이지가 넘어감.
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>