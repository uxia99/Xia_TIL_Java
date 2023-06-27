<%@page import="com.multi.mvc006.CarDAO"%>
<%@page import="com.multi.mvc006.CarVO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<jsp:useBean id="bag" class="com.multi.mvc006.CarVO"></jsp:useBean>
	<jsp:setProperty property="vin" name="bag"/> <!-- property : "id" -> "vin" -->
	
	<%
	
	CarDAO dao = new CarDAO();
	int result = dao.delete(bag);
	if(result == 1) {
		out.print("<h3>차량정보 삭제 완료</h3>");
	} else {
		out.print("<h3>차량정보 삭제 실패</h3>");
	}
	
	%>
