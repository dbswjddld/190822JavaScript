<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<script>
	//"use strict";   -> 변수선언 안하면 못씀
	
	// 전역변수
	let g = 10;
	let g = 15; // 중복 error
	
	// 블록변수
	{
		 let g = 20;
	}
	
	function sum() {
		// 지역변수
		let d = 4;
	}
	
	//sum();
	document.write(g);
	
	
</script>
</body>
</html>