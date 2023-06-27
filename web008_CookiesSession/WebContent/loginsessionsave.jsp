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
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String originalId = "root";
		String originalPw = "1234";
		
		if (id.equals(originalId) && pw.equals(originalPw)) {
			// 로그인 성공 
			session.setAttribute("id", id);
		}
		
		// 세션 설정
		session.setAttribute("view", 1); // name 부분은 무조건 Spring, value 부분은 Object라 다 가능함 
		
	%>
	
	세션값을 서버에 저장했습니다.
	
	<hr color = "red">
	<a href = "shopping.jsp">Shopping</a>
	<a href = "news.jsp">News</a>
	
</body>
</html>