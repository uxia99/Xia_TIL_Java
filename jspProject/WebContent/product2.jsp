<%@page import="com.jsp.project.ProductDTO"%>
<%@page import="com.jsp.project.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 가방을 만들어서 -->
<jsp:useBean id="bag" class="com.jsp.project.ProductDTO"></jsp:useBean>

<!-- 넘어온값 가방에 넣고 -->
<jsp:setProperty property="id" name="bag" />

<!-- DAO의 one()메서드로 가방에 들어있는 값을 전달 -->
<!-- one()의 결과가 id에 해당하는 상세정보! 이 정보를 테이블에 정리해준다. -->
<%
	ProductDAO dao = new ProductDAO();
	ProductDTO dto = dao.one(bag);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/project.css">
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	$(function() { //body부분을 먼저 브라우저가 읽고와서, 설정
		$('input').click(function() {
			//alert('장바구니에 넣을 처리를 할 예정입니다.')
			$.ajax({
				url: "basket.jsp",
				data: {
					id : "<%=dto.getId()%>",
					price : <%= dto.getPrice() %>,
					title : "<%= dto.getTitle() %>"
				},
				success: function() {
					alert(<%=dto.getId()%> + '번 상품이 장바구니에 추가가 잘 되었습니다.')
					choice = confirm('장바구니 화면으로 넘어가시겠습니까??')
					/* alert(choice) */
					if (choice){
						location.href = "basket.jsp"
					}
				}
			})
		})
	})
</script>
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
			물건 상세 정보 보기
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
					<td>아이디</td>
					<td><%=dto.getId()%></td>
				</tr>
				<tr>
					<td>상품명</td>
					<td><%=dto.getTitle()%></td>
				</tr>
				<tr>
					<td>상품상세설명</td>
					<td><%=dto.getContent()%></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><%=dto.getPrice()%></td>
				</tr>
				<tr>
					<td>상품이미지</td>
					<td><img src='img/<%=dto.getImg()%>' width='300'
						height='300'></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="image" src="img/bag.png" width="100" height="100">
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>