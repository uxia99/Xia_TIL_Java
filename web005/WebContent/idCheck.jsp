<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String user = request.getParameter("user");
	String result = "중복이 되지 않아 사용 가능함";
	String[] list = {"root", "admin", "hong"};
	
	for (String s : list){
		if (s.equals(user)){
			result = "중복이 되므로, 사용 불가";
			break; //반복문의 break;
		}
	}
%><%= result %>
    