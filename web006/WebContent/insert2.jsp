<%@page import="com.multi.mvc006.BbsDAO"%>
<%@page import="com.multi.mvc006.BbsVO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- BbsVO bag = new BbsVO(); -->
	<jsp:useBean id = "bag" class = "com.multi.mvc006.BbsVO"></jsp:useBean>


<!-- reqiuest.getParameter("no"); bag.setId(no); -->
	<jsp:setProperty property = "*" name = "bag"/>

	<%
/*     String title = request.getParameter("title");
    String contet = request.getParameter("content");
    String writer = request.getParameter("writer");
    
    // 1. 가방을 만들어서 (객체(부품) 생성) 
    BbsVO_DTO bag = new BbsVO_DTO();
    // 벽돌틀 별돌1 = new 벽돌틀();
    
    // 2. 받은 데이터를 가방에 넣고 
    bag.setTitle(title);
    bag.setContent(content);
    bag.setWriter(writer); */
    
    // 3. DAO를 생성해 
    // 클릭하고 Cmd + Shift + M
    BbsDAO dao = new BbsDAO();
    
    // 4. Create해달라고 요청과 함께 가방 전달
    // cal.add(100, 200);
    dao.create(bag);
    
    %>


