<%@page import="com.jsp.project.ProductDTO"%><%@page import="java.util.ArrayList"%><%@page
	import="com.jsp.project.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ProductDAO dao = new ProductDAO();
	//jsp에서는 자동 import : 클릭 후, 컨트롤 + 쉬프트 + m
	ArrayList<ProductDTO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/project.css">
</head>
<body>
	<div id="total">
		<div id="top"><jsp:include page="top.jsp"></jsp:include></div>
		<div id="top2"><jsp:include page="top2.jsp"></jsp:include></div>
		<div id="center">
			상품 정보 넣는 곳
			<hr color="red">
			<%
				if (session.getAttribute("id") != null) {
			%>
			<%=session.getAttribute("id")%>님 환영합니다.
			<%
				}
			%>
			<hr color="blue">
			<table border="1">
				<tr>
					<!-- 상품명	상품가격	상품이미지 -->
					<td>상품명</td>
					<td>상품가격</td>
					<td>상품이미지</td>
				</tr>
				<!-- jsp는 자바코드와 html를 섞어서 코드할 수 있음.  -->
				<!-- 자바코드는 반드시 스크립트릿내에 들어가게 코드해야함. -->
				<%
					for (int i = 0; i < list.size(); i++) {
					//가방들이 들어있는 컨테이너 역할을 하는 arraylist에서
					//하나씩 가방을 꺼내주어야함.
					ProductDTO dto = list.get(i);
				%>
				<tr>
					<td><a href="product2.jsp?id=<%=dto.getId()%>"><%=dto.getTitle()%></a>
					</td>
					<td><%=dto.getPrice()%></td>
					<td><img src='img/<%=dto.getImg()%>' width='150'
						height='150'></td>
				</tr>
				<%
					}
				%>

			</table>











		</div>
	</div>
</body>
</html>