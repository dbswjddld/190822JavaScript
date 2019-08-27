<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	
	<script>
	window.onload = function() {
		var btn = document.getElementById("btn");
		btn.onclick = function(){
			imgList = document.getElementsByTagName("img");
			for(i = 0; i < imgList.length; i++){
				imgList[i].style.width = "100px";
			}	
		}
		
	}
	</script>
</head>
<body>
	<button id = "btn">그림 크기 변경</button><br>
	<img src = "../img/Tulips.jpg">
	<img src = "../img/Jellyfish.jpg">
	<img src = "../img/Penguins.jpg">
</body>
</html>