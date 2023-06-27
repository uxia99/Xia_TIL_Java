<%@page import="java.util.ArrayList" %>
<%@page import="com.multi.mvc006.MemberDAO"%>
<%@page import="com.multi.mvc006.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberVO> list = dao.list(); 
	%>
	
	<% for(MemberVO bag2 : list) { %>
	검색한 id는 <%= bag2.getId() %> <br>
	검색한 pw는 <%= bag2.getPw() %> <br>
	검색한 name은 <%= bag2.getName() %> <br>
	검색한 tel은 <%= bag2.getTel() %> <br><hr>
	<% } %>