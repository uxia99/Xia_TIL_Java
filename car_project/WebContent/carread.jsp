<%@page import="com.car.project.CarDAO"%>
<%@page import="com.car.project.CarVO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<jsp:useBean id="bag" class="com.car.project.CarVO"></jsp:useBean>
	<jsp:setProperty property="vin" name="bag"/> <!-- property : "id" -> "vin" -->

    <% 
        // CarVO bag = new CarVO();
    	// bag.setVin(request.getParameter("vin"));
    	
    	CarDAO dao = new CarDAO();
    	CarVO bag2 = dao.read(bag);
        
    %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Car Information Update</title>
  <style>
    body {
      background-image: linear-gradient(rgba(255, 255, 255, 0.05), rgba(255, 255, 255, 0.4)), url("img/ferrari_image2.jpg");
      background-size: cover;
      background-position: center center;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }
    
    .container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    
    .form {
      background-color: rgba(255, 255, 255, 0.9);
      padding: 20px;
      border-radius: 10px;
      text-align: center;
    }
    
    .form input[type="text"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid rgba(0, 0, 0, 0.2); /* 변경: 검정색 옅은 테두리 추가 */
      border-radius: 5px;
      box-sizing: border-box;
    }
    
    .form button[type="submit"] {
      background-color: #BFFFFB;
      color: #000;
      border: none;
      border-radius: 5px;
      padding: 10px 20px;
      font-weight: bold;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="form">
      <h2>차량 정보 조회</h2>
      <form action="carupdate.jsp" method="get">
      	VIN : <%= bag2.getVin() %><br>
      	Model : <%= bag2.getModel() %><br>
      	Brand : <%= bag2.getBrand() %><br>
      	Year : <%= bag2.getYear() %><br>
      </form>
    </div>
  </div>
</body>
</html>
   