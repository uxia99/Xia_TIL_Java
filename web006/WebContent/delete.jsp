<%@page import="com.multi.mvc006.MemberDAO"%>
<%@page import="com.multi.mvc006.MemberVO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<jsp:useBean id = "bag" class = "com.multi.mvc006.MemberVO"></jsp:useBean>
	<jsp:setProperty property = "id" name = "bag"/>

	<%
	
	MemberDAO dao = new MemberDAO();
	int result = dao.delete(bag);
	if(result == 1) {
		out.print("<h3>회원탈퇴 성공</h3>");
	} else {
		out.print("<h3>회원탈퇴 실패</he>");
	}
	
    %>