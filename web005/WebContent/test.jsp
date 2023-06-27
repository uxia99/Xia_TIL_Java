<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- test.jsp?test = 배고파 --%>
<%
	String test = request.getParameter("test");
%>

AJAX 테스트 결과 : <%= test %>