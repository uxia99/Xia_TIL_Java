<%@page import="com.multi.mvc006.MemberDAO"%>
<%@page import="com.multi.mvc006.MemberVO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 
    --- 여기에서 해야하는 작업 순서
    1. form 안에서 입력해서 서버로 전달할 값을 받아와서 ram(변수)에 저장
    2. 받은 데이터를 가지고 sql문 만들어서 db 서버로 전송
    3. 브라우저에게 결과가 어떻게 되었는 지 알려줘야 함(only html)
    -->

	<%
		String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    String name = request.getParameter("name");
	    String tel = request.getParameter("tel");
	    
	    // 1. 가방을 만들어서 (객체(부품) 생성) 
	    MemberVO bag = new MemberVO();
	    // 벽돌틀 별돌1 = new 벽돌틀();
	    
	    // 2. 받은 데이터를 가방에 넣고 
	    bag.setId(id);
	    bag.setPw(pw);
	    bag.setName(name);
	    bag.setTel(tel);
	    
	    // 3. DAO를 생성해 
	    MemberDAO dao = new MemberDAO();
	    
	    // 4. Create해달라고 요청과 함께 가방 전달
	    // cal.add(100, 200);
	    dao.create(bag);
	%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="lightgray">
	<br> 요청에 대한 응답이 들어가는 부분 <br>
	<br> 서버로 전달된 id :
	<%= id %>
	<br> 서버로 전달된 pw :
	<%= pw %>
	<br> 서버로 전달된 name :
	<%= name %>
	<br> 서버로 전달된 tel :
	<%= tel %>
	<br>
</body>
</html>