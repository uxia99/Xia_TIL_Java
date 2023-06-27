<%@page import="com.multi.mvc006.MemberDAO"%>
<%@page import="com.multi.mvc006.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="bag" class="com.multi.mvc006.MemberVO"></jsp:useBean>
<jsp:setProperty property="id" name="bag" />

	<%
		MemberDAO dao = new MemberDAO();
		MemberVO bag2 = dao.one(bag); //bag
	%>
	
	검색한 id는 <%= bag2.getId() %> <br>
	검색한 pw는 <%= bag2.getPw() %> <br>
	검색한 name는 <%= bag2.getName() %> <br>
	검색한 tel는 <%= bag2.getTel() %> <br>