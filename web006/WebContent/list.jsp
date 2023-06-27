<%@page import="java.util.ArrayList"%>
<%@page import="com.multi.mvc006.MemberDAO"%>
<%@page import="com.multi.mvc006.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<%
	MemberDAO dao = new MemberDAO();
	ArrayList<MemberVO> list = dao.list(); 
%>
<table class="table table-hover table-dark table-striped">
<tr>
	<td>id</td>
	<td>pw</td>
	<td>name</td>
	<td>tel</td>
</tr>
<% for(MemberVO bag2: list){ %>
<tr>
	<td><%= bag2.getId() %></td>
	<td><%= bag2.getPw() %></td>
	<td>
		<a href="one.jsp?id=<%= bag2.getId() %>"><%= bag2.getName() %></a>
	</td>
	<td><%= bag2.getTel() %></td>
</tr>
<% } %>
</table>