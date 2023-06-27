<%@page import="com.jsp.project.BbsDTO"%>
<%@page import="com.jsp.project.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 가방을 만들어서 -->
<jsp:useBean id="bag" class="com.jsp.project.BbsDTO"></jsp:useBean>

<!-- 넘어온값 가방에 넣고 -->
<jsp:setProperty property="id" name="bag" />

<!-- DAO의 one()메서드로 가방에 들어있는 값을 전달 -->
<!-- one()의 결과가 id에 해당하는 상세정보! 이 정보를 테이블에 정리해준다. -->
<%
	BbsDAO dao = new BbsDAO();
	BbsDTO dto = dao.one(bag);
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
			게시판 내용 상세 정보 보기<a href="bbs5.jsp?id=<%=dto.getId()%>">수정하기</a>
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
					<td width="200">아이디</td>
					<td width="300"><%=dto.getId()%></td>
				</tr>
				<tr>
					<td width="200">제목</td>
					<td width="300"><%=dto.getTitle()%></td>
				</tr>
				<tr>
					<td width="200">내용</td>
					<td width="300"><%=dto.getContent()%></td>
				</tr>
				<tr>
					<td width="200">작성자</td>
					<td width="300"><%=dto.getWriter()%></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>