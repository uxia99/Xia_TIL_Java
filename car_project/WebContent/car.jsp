<%@page import="com.car.project.CarDAO"%>
<%@page import="com.car.project.CarVO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%
		String vin = request.getParameter("vin");
		String model = request.getParameter("model");
		String brand = request.getParameter("brand");
		String year = request.getParameter("year");
		
		// 1. 가방 생성
		CarVO bag = new CarVO();
		
		// 2. 받은 데이터 가방에 넣기 
		bag.setVin(vin);		
		bag.setModel(model);		
		bag.setBrand(brand);		
		bag.setYear(year);		
		
		// 3. DAO 생성 
		CarDAO dao = new CarDAO();
		
		// 4. Create 해달라고 요청과 함께 가방 전달 
		dao.create(bag);
		
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset = "UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor = "lightgray">
	<br> 요청에 대한 응답이 들어가는 부분 <br>
	<br> 서버로 전달된 VIN : 
	<%= vin %>
	<br> 서버로 전달된 Model : 
	<%= model %>
	<br> 서버로 전달된 Brand : 
	<%= brand %>
	<br> 서버로 전달된 Year : 
	<%= year %>
	<br>
</body>
</html>