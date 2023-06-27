<%@page import="com.car.project.CarDAO"%>
<%@page import="com.car.project.CarVO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id = "bag" class = "com.car.project.CarVO" scope = "request"></jsp:useBean>
    <jsp:setProperty property = "vin" name = "bag"/>
    
    <% 
    
    request.setCharacterEncoding("UTF-8");
    
    String vin = request.getParameter("vin");
    String model = request.getParameter("model");
    String brand = request.getParameter("brand");
    String year = request.getParameter("year");
    
    CarVO car = new CarVO();
    car.setVin(vin);
    car.setModel(model);
    car.setBrand(brand);
    car.setYear(year);
    
    CarDAO dao = new CarDAO();
    dao.update(car);
    
    %>
    
    <!DOCTYPE html>
    <html>
    <head>
    	<meta charset = "UTF-8">
    	<title>차량정보 수정</title>
    </head>
    <body>
    	<h1>차량정보 수정</h1>
    	<p>차량정보가 성공적으로 수정되었습니다.</p>
    	<p>VIN : <%= car.getVin() %></p>
    	<p>Model : <%= car.getModel() %></p>
    	<p>Brand : <%= car.getBrand() %></p>
    	<p>Year : <%= car.getYear() %></p>
    </body>
    </html>
    
    
    