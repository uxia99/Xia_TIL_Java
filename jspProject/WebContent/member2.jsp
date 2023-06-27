<%@page import="com.jsp.project.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--1. 가방을 만들어서, 전달받은 id ,pw, name, tel을
    	가방에 넣고
    	2. dao안에 있는 insert()메서드를 호출하면서
    	   가방에 있는 데이터를 주면 됨.
    	3. 가입이 잘 되었는지 확인해보고, 그 결과를 브라우저에 표현!   
    -->
    <jsp:useBean id="bag" class="com.jsp.project.MemberDTO"></jsp:useBean>
    <jsp:setProperty property="*" name="bag"/>
    <%
    	MemberDAO dao = new MemberDAO();
    	int result = dao.insert(bag);
    	String result2 = "회원가입 실패!!!";
    	if(result == 1){
    		result2 = "회원가입 성공@@@@@";
    	}
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/project.css">
</head>
<body>
<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<div id="center">
		<%= result2 %><br>
	</div>
</div>
</body>
</html>