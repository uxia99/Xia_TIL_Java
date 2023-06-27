<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String tel = request.getParameter("tel");
	
	String result = "222"; //인증문자 
	String pre = tel.substring(0,3); //010
	switch(pre) { 
	case "010":
		result = "100";
		break;
	case "011":
		result = "111";
		break;
	}
	
	Random r = new Random();
	int post = r.nextInt(900) + 100; //0~899 -> 0~999
		result += post; // result = result + post 
%><%= result %>