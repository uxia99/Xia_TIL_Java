<%@page import="com.jsp.project.BbsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jsp.project.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	BbsDAO dao = new BbsDAO();
	//jsp에서는 자동 import : 클릭 후, 컨트롤 + 쉬프트 + m
	ArrayList<BbsDTO> list = dao.list();
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
				<hr color="red">
			<%
				if (session.getAttribute("id") != null) {
			%>
				<%=session.getAttribute("id")%>님 환영합니다.
				<a href="bbs3.jsp">글쓰기</a>
			<%
				}
			%>
			<hr color="blue">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td>제목</td>
					<td>작성자</td>
				</tr>
				<!-- jsp는 자바코드와 html를 섞어서 코드할 수 있음.  -->
				<!-- 자바코드는 반드시 스크립트릿내에 들어가게 코드해야함. -->
				<%
					for (int i = 0; i < list.size(); i++) {
					//가방들이 들어있는 컨테이너 역할을 하는 arraylist에서
					//하나씩 가방을 꺼내주어야함.
					BbsDTO dto = list.get(i);
				%>
				<tr>
					<td><%=dto.getId()%></td>
					<td>
						<a href="bbs2.jsp?id=<%=dto.getId()%>"><%=dto.getTitle()%></a>
					</td>
					<td><%=dto.getWriter()%></td>
				</tr>
				<%
					}
				%>

			</table>
		</div>
	</div>
</body>
</html>