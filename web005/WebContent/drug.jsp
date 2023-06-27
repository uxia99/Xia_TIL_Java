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
		
		$('#b1').click(function() {
			alert("alert 실행됨")
			$.ajax({
				url : "data/drug_data.json",
				success : function(doc) { //[json, json, json]
					list = doc
					
					for (var i = 0; i < list.length; i++) {
						id = list[i].id
						name = list[i].name
						company = list[i].company
						code = list[i].code
						// alert(name)
						$('#d1').append("drug info : " + "<br>" + "ID : " + id + "<br>" + "Name : " + name + "<br>" + "Company : " + company + "<br>" + "Code : " + code + "<br>" + "<br>")

						
						// 내 서버로 보내서 sql문 작성 후 db에 넣기
						$.ajax({
							url : "db2.jsp",
							data : {
								id : id,
								name : name,
								company : company,
								code : code
							},
							success : function() {
								console.log("DB Connected")
							},
							error : function() {
								console.log("DB Disconnected")
							}
							
						})
						
					}
					
				},
				
				error : function(e) {
					alert(e)
					
				} // error
				
			}) // ajax 
			
		}) // b1 
		
	}) // $ 
	
	</script>
	
	<style>
		input {
			background : yellow;
			color : red;
		}
	
	</style>
	
</head>
<body>
	<button id="b1" type="button" class="btn btn-dark">Drug Information</button><br>
	<hr>
	<div id="d1" style="width: 400px; height: 150000px; background: lightyellow;"></div>
</body>
</html>