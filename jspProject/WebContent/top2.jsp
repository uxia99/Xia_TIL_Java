<%@page import="com.jsp.project.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("basket") != null ){
		ArrayList<ProductDTO> list = (ArrayList<ProductDTO>)session.getAttribute("basket");
		out.print("장바구니에 들어간 물건의 개수: " + list.size() + "개");
	}else{
		out.print("장바구니가 비어있음.");
	}
%>