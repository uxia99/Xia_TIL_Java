<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
	<!-- Latest compiled and minified CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	
	<script type = "text/javascript">
	
	$(function() {
		// document.getElementById("b1")
		// id가 b1 버튼을 찾아서 클릭했을 때 입력값으로 넣은 function(){함수처리부분}을 실행시킴
		$('#b1').click(function() {
			alert("alert 실행됨I")
			$.ajax({
				url : "test.jsp",
				data : {
					test : $('#test').val()
				},
				success : function(x) {
					alert("받은 데이터는 " + x)
					$('#d1').html("받은 데이터는 : " + x)
				},
				error : function(e) {
					alert(e)
				}
				
			})
			
		}) // b1 
		
		$('#b2').click(function() {
			alert("alert 실행됨II")
			$.ajax({
				url : "money.jsp",
				data : {
					what : $('#what').val()
				},
				success : function(x) {
					alert("받은 데이터는 " + x)
					$('#d1').html("받은 데이터는 : " + x)
				},
				error : function(e) {
					alert(e)
				}
				
			})
			
		}) // b2 
		
		$('#b3').click(function() {
			alert("alert 실행됨III")
			$.ajax({
				url : "idCheck.jsp",
				data : {
					user : $('#user').val()
				},
				success : function(x) {
					alert("받은 데이터는 " + x)
					$('#d1').html("받은 데이터는 : " + x)
				},
				error : function(e) {
					alert(e)
				}
				
			})
			
		}) // b3 
		
		$('#b4').click(function() {
			alert("alert 실행됨IIII")
			$.ajax({
				url : "phone.jsp",
				data : {
					tel : $('#tel').val()
				},
				success : function(x) {
					alert("받은 데이터는 " + x)
					$('#d1').html("받은 인증번호는 : " + x)
				},
				error : function(e) {
					alert(e)
				}
				
			})
			
		}) // b4
		
	}) // $ 
	
	
	
	
	</script>

</head>
<body>
	<label for=test>AJAX 테스트:</label>
	<input id="test">
	<button id="b1" type="button" class="btn btn-dark">AjaxTest</button><br>
	<hr>
	<label for=money>결제금액:</label>
	<input id="money">
	1)계좌이체,2)신용카드,3)휴대폰결제
	<br>
	<label for="what">결제수단 :</label>
	<input id="what">
	<button id="b2" type="button" class="btn btn-dark">결제</button>
	<hr>
	<label for="user">회원가입할Id :</label>
	<input id="user">
	<button id="b3" type="button" class="btn btn-dark">회원가입시 id중복체크</button>
	<hr>
	<label for="tel">인증받을 전화번호 입력 :</label>
	<input id="tel">
	<button id="b4" type="button" class="btn btn-dark">인증번호받기</button>
	<hr>
	<div id="d1" style="width: 400px; height: 100px; background: lime;"></div>
</body>
</html>