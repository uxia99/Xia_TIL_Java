<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String no = request.getParameter("no");
 	String title = request.getParameter("title");
 	String content = request.getParameter("content");
 	String writer = request.getParameter("writer");
 	
	Class.forName("com.mysql.cj.jdbc.Driver");
    //out객체: 내장된 객체, PrintWriter
    out.print("1. 드라이버 설정 성공");
    
    String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    String user = "root";
    String password = "1234";
    //2. db연결 - url(ip + port + db명), id, pw
    
    //자동완성 DriverM ==> 컨트롤 + 스페이스바 
    //JSP에서 import단축키 : 컨트롤(cmd) + 쉬프트 + m
    Connection con = DriverManager.getConnection(url, user, password); //Connection
    out.print("2. db연결 성공");
    
    //3. sql문 생성
    String sql = "insert into bbs values (?, ?, ?, ?)";
    //위에 String은 자바에서는 sql문으로 인식 불가 
    //sql문에 해당하는 부품으로 만들어주어야 한다.
    //PreparedStatement --- sql
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setInt(1, Integer.parseInt(no));
    ps.setString(2, title);
    ps.setString(3, content);
    ps.setString(4, writer);
    
    out.print("3. sql문 생성 성공");
    
    //4. sql문 전송 
    ps.executeUpdate();
    out.print("4. sql문 전송 성공");
    	
    
    
 //db코드 
 //자바와 db연결하는 프로그램: JDBC
 //JDBC4단계 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
요청에 대한 응답이 들어가는 부분.<br>
서버로 전달된 no: <%= no %> <br>
서버로 전달된 title: <%= title %> <br>
서버로 전달된 content: <%= content %> <br>
서버로 전달된 writer: <%= writer %> <br>
</body>
</html>