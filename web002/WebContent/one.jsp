<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
     <%
    //1. 서버에서 클라이언트 보낸 id를 받아서, ram에 변수를 만들어 저장
    //2. 받은 데이터로 sql문을 만들어서 db에 접속한 다음 보냄. ==>JDBC4단계 코드!!
    //3. db에서 보낸 결과인 테이블 데이터를 추출하여 html을 만들어야한다.
    //one.jsp?id=summer
    String id = request.getParameter("id"); //summer
    	//내장된 객체: request, response, session, application, model
    	
    	//db연결해서 sql만든 후, 전송!!!!
    	//1. 드라이버 설정
   	Class.forName("com.mysql.cj.jdbc.Driver");
    //out객체: 내장된 객체, PrintWriter
    out.print("1. 드라이버 설정 성공<br>");
    
    String url = "jdbc:mysql://localhost:3306/shop?serverTimezone=UTC";
    String user = "root";
    String password = "1234";
    //2. db연결 - url(ip + port + db명), id, pw
    
    //자동완성 DriverM ==> 컨트롤 + 스페이스바 
    //JSP에서 import단축키 : 컨트롤(cmd) + 쉬프트 + m
    Connection con = DriverManager.getConnection(url, user, password); //Connection
    out.print("2. db연결 성공<br>");
    
    //3. sql문 생성
    //자바에서 유일하게 인덱스가 1번시작 곳!!! ==> ? 인덱스 1번시작 
    //검색해서 테이블을 리턴받는 경우, 컬럼도 인덱스 1번시작 곳!!!
    
    String sql = "select * from member where id = ?"; 
    //select의 결과는 table 
    // select * from member where id = 'summer'
    //id = ? : 1번 ?
    //위에 String은 자바에서는 sql문으로 인식 불가 
    //sql문에 해당하는 부품으로 만들어주어야 한다.
    //PreparedStatement --- sql
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, id);
    
    out.print("3. sql문 생성 성공<br>");
    
    //4. sql문 전송 
    //CUD(insert, update, delete) ==> ps.executeUpdate(), 실행된 row수를 받음.
    //R(select) ==> ps.executeQuery(), 조건에 맞는 row가 포함된 테이블을 받음.
    //jsp: 자동import ==> 클릭 후, ctrl + shift + m
    //java: 자동import ==> ctrl + shift + o
    //자동완성: 컨트롤 + spacebar
    ResultSet table = ps.executeQuery(); //db로 부터 받은 table을 서버의 ram에 저장해두자.!
    //기본형(값을 비교, 정수, 실수, 문자1, 논리), 참조형(주소)
    out.print("4. sql문 전송 성공<br>");
    //select id, pw from member where id = 'summer'
    String pw = "";
    String id2 ="";
    String name = "";
    String tel = ""; //null? 쓰레기값이 들어있는 상태!
    //쓰레기값이 들어가있는 상태는 출력X, 연산X
    if(table.next()){ //if(조건식의 결과가 무조건 boolean!true/false)
    	out.print("결과 row가 있음.~<hr color=red><br>");
    	id2 = table.getString(1); //id컬럼 
    	pw = table.getString(2); //pw
    	name = table.getString("name"); //name
    	tel = table.getString(4); //tel
    	out.print(id2 + " " + pw + " " + name + " " + tel);
    }
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body bgcolor="yellow">
<hr>요청에 대한 응답이 들어가는 부분.<br>
검색한 id: <%= id %> <br>
검색한 pw: <%= pw %> <br>
검색한 name: <%= name %> <br>
검색한 tel: <%= tel %> <br> <!-- 표현식(expression), 출력 -->

<hr color="red">
<table class="table table-dark table-hover">
	<tr>
		<td>아이디</td>
		<td><%= id %></td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td><%= pw %></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><%= name %></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><%= tel %></td>
	</tr>
</table>






</body>
</html>