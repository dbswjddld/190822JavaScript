<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<script src = "https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
	$(function(){	// = document ready 를 줄인 것
	//$(document).ready( function(){
		$("#btn").click(function(){
			$("img").width("100");	
		}); // #btn을 클릭하면 해당 함수 실행
	} );
	</script>
</head>
<body>
	<button id = "btn">그림 크기 변경</button><br>
	<img src = "../img/Tulips.jpg">
	<img src = "../img/Jellyfish.jpg">
	<img src = "../img/Penguins.jpg">
	
</body>
</html>