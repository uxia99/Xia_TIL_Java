<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 
    --- 여기에서 해야하는 작업 순서
    1. form 안에서 입력해서 서버로 전달할 값을 받아와서 ram(변수)에 저장
    2. 받은 데이터를 가지고 sql문 만들어서 db 서버로 전송
    3. 브라우저에게 결과가 어떻게 되었는 지 알려줘야 함(only html)
    -->

	<%
    // 자바코드를 넣을 수 있음
    // 필요한 코드블록만 넣을 수 있음
    /* 지금 이걸 작성하는 <, % 이 기호 스크립트릿(scriptlet)
       : 자바 코드를 일부만 작성하는 작은 프로그램 */
    // 1. 값을 받아서 Ram의 변수에 집어넣는다.
    // HttpServletRequest request = new HttpServletRequet();
    // id = apple & pw = 1234 & name = apple & tel = 011
    		// Cmd + Option + 화살표 아래 = 한 줄 복사
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String name = request.getParameter("name");
    String tel = request.getParameter("tel");
    // 내장된 객체 : request, response, session, application, model
    
    // db 연결해서 sql만든 후 전송
    //	1. 드라이버 설정
    Class.forName("com.mysql.cj.jdbc.Driver");
    //  out객체 : 내장된 객체, PrintWriter
    out.print("1. 드라이버 설정 성공");
    String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    String user = "root";
    String password = "1234";
    //	2. DB 연결 - url(ip + port + db명), id, pw
    
    // jsp에서 import 단축키 : Cmd + Shift + M
    Connection con = DriverManager.getConnection(url, user, password); //Connection
    out.print("<br>2. DB 연결 성공"); 
    
    //	3. sql문 생성
    String sql = "insert into member values (?, ?, ?, ?)";
    //  위의 String은 자바에서는 sql문으로 인식을 못함
    //  -> sql문에 해당하는 부품으로 만들어줘야 함
    //  PreparedStatement --- sql
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, id);
    ps.setString(2, pw);
    ps.setString(3, name);
    ps.setString(4, tel);
    
    out.print("<br>3. sql문 생성 성공");
    
    //	4. sql문 전송
    ps.executeUpdate();
    out.print("<br>4. sql문 전송 성공<br>");
    
    %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="lightgrey">
	<br> 요청에 대한 응답이 들어가는 부분 <br>
	<br> 서버로 전달된 id :
	<%= id %>
	<br> 서버로 전달된 pw :
	<%= pw %>
	<br> 서버로 전달된 name :
	<%= name %>
	<br> 서버로 전달된 tel :
	<%= tel %>
	<br>
</body>
</html>