<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    	String id = request.getParameter("id");
    	String name = request.getParameter("name");
    	String company = request.getParameter("company");
    	String code = request.getParameter("code");
    	
    	//db연결해서 sql만든 후, 전송!!!!
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
    String sql = "insert into drug values (?, ?, ?, ?)";
    //위에 String은 자바에서는 sql문으로 인식 불가 
    //sql문에 해당하는 부품으로 만들어주어야 한다.
    //PreparedStatement --- sql
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, id);
    ps.setString(2, name);
    ps.setString(3, company);
    ps.setString(4, code);
    
    out.print("3. sql문 생성 성공");
    
    //4. sql문 전송 
    ps.executeUpdate();
    out.print("4. sql문 전송 성공");
    
    ps.close();
    con.close();
     %>