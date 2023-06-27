<%@page import="com.jsp.project.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="bag" class="com.jsp.project.BbsDTO"></jsp:useBean>
<jsp:setProperty property="*" name="bag"/>
<%
	BbsDAO dao = new BbsDAO();
	dao.insert(bag);
	response.sendRedirect("bbs.jsp");
%>

