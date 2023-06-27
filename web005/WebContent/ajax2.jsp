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
			alert("alert 실행됨I")
			$.ajax({
				url : "data/dataset.xml",
				success : function(doc) {
					// alert("받은 데이터는 " + doc)
					list = $(doc).find('rank') //배열 [rank, rank, rank], [rank]
					alert(list.length + " " + list)
					
					for (var i = 0; i < list.length; i++) {
						first_name = $(list[i]).find('first_name').text() //<name>Uxia<name>
						tel = $(list[i]).find('tel').text()
						// alert(name)
						console.log("이름은 " + first_name + ", 연락처는 " + tel + "<br>")
						$('#d1').append("Name : " + first_name + ", 연락처는 " + tel + "<br>")

					}
					
				},
				error : function(e) {
					alert(e)
				}
				
			})
			
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
	<button id="b1" type="button" class="btn btn-dark">XML 예제</button><br>
	<hr>
	<div id="d1" style="width: 400px; height: 25000px; background: lightyellow;"></div>
</body>
</html>