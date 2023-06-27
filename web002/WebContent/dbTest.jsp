<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //스크립트릿 
    //== JDBC프로그래밍
    //1. 드라이버 설정
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
    String sql = "insert into member values ('win2','win2','win2','015')";
    //위에 String은 자바에서는 sql문으로 인식 불가 
    //sql문에 해당하는 부품으로 만들어주어야 한다.
    //PreparedStatement --- sql
    PreparedStatement ps = con.prepareStatement(sql);
    out.print("3. sql문 생성 성공");
    
    //4. sql문 전송 
    ps.executeUpdate();
    out.print("4. sql문 전송 성공");
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