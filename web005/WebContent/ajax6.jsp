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
<script type="text/javascript">
$(function() {
	$('#b1').click(function() {
		alert("내가 호출되었어.!")
		$.ajax({
			url: "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Frss.hankyung.com%2Ffeed%2Fit.xml&api_key=rooa9cfdnkctmsnpiftxnozlzfyaunxvudzwajoq",
			success: function(doc) { 
				list = doc.items //[{},{},{}]
				alert('프락시 서버 연결 성공.@@@@@@@@>> ' + list.length)
				for (var i = 0; i < list.length; i++) {
					title = list[i].title
					pubDate = list[i].pubDate
					link = list[i].link
					author = list[i].author
					console.log(title+ ", " + pubDate + ", " + link  + ", " + author)
					//$('#d1').append(title+ ", " + pubDate + ", " + link  + ", " + author + "<br>")
					$('#d1').append("<a href=" + link + ">" + title + "</a><br>")
				}
			},
			error: function(e) {
				alert('프락시 서버 실패.@@@@@@@@')
			} //error
		}) //ajax
	}) //b1
}) //$
</script>
<style>
input{
	background: yellow;
	color: red;
}
</style>
</head>
<body>
	<button id="b1" class="mt-2 p-2 bg-primary text-white rounded">한경 기사 XML받아오자.</button>
	<hr>
	<div id="d1" style="width: 500px; height: 300px; background: lightyellow;">
	</div>
</body>
</html>