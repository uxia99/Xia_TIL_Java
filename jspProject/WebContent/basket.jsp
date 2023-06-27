<%@page import="com.jsp.project.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 가방을 만들어서 -->
<jsp:useBean id="bag" class="com.jsp.project.ProductDTO"></jsp:useBean>
<!-- 넘어온 값들을 가방에 넣는다. -->
<jsp:setProperty property="*" name="bag"/>
<!-- 넘어온 가방들을 저장할 ArrayList를 만들어 가방을 저장한다. -->
<%
	ArrayList<ProductDTO> list = null;
	String s = null;
	if (bag.getId() != null) {
		if (session.getAttribute("basket") == null) {
			//장바구니에 처음 넣는 경우=> 장바구니 역할을 하게 될 ArrayList을 만들어야 한다.
			list = new ArrayList<>();
		} else {
			//장바구니에 두번째 이후로 넣는 경우
			list = (ArrayList<ProductDTO>) session.getAttribute("basket");
			//강제형변환(다운캐스팅) ArrayList(작, 자식클래스) <----Object(큰, 부모클래스)
		}
		list.add(bag);
		session.setAttribute("basket", list);
		//자동형변환(업캐스팅) ArrayList(작, 자식클래스) ----> Object(큰, 부모클래스)
	}else{
		if (session.getAttribute("basket") == null) {
			s = "장바구니에 아무것도 들어있지 않음.";
		} else {
			list = (ArrayList<ProductDTO>) session.getAttribute("basket");
		}
	}
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
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<div id="center">
	<%
		if(session.getAttribute("basket") == null){
	%>
	<%= s %><br>
	<%}else{ %>
		<%= list.size() %>개의 상품이 장바구니에 들어있음.
		<!--테이블 형태로 장바구니 ArrayList에 있는 것들을 꺼내서 만들어주세요.-->
		<table>
			<tr>
				<td>아이디</td>
				<td>물건이름</td>
				<td>가격</td>
				<td>주문하기</td>
			</tr>
		<%
			for(int i=0; i < list.size(); i++){
				ProductDTO dto = list.get(i);
		%>
			<tr>
				<td><%= dto.getId() %></td>
				<td><%= dto.getTitle() %></td>
				<td><%= dto.getPrice() %></td>
				<td>
					<a href="order.jsp?id=<%= dto.getId() %>">주문하기</a>
				</td>
			</tr>
		<%}%>
		</table>
	<% }	%>
	<hr color="red">
	<% if(session.getAttribute("id") != null) { %>
		<%= session.getAttribute("id") %>님 환영합니다.
	<%} %>
	</div>
</div>
</body>
</html>