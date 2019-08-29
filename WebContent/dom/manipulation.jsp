<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>manipulation.jsp (태그 조작)</title>
	<style>
	div { border : 1px solid blue; padding : 10px; margin : 10px; }
	</style>
</head>
<body>
	<div id = "bucket">바구니</div>
	<div id = "apple">사과</div>
	<div id = "banana">바나나</div>
	
	<script src = "https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
	$(function(){
		$bucket = $("#bucket");
		$apple = $("#apple");
		$banana = $("#banana");
		
		$apple.appendTo($bucket); 
		// 사과를 바구니로 이동 - 자식.appendTo(부모)
		$bucket.append($banana.clone());
		// 바나나를 복사해서 추가
		var fruit = { cnt : 1, no : 10, name : "kiwi" };
		$("<div>").html("키위")
				  .attr("id", "kiwi")
				  .css("color", "green")
				  .bind("click", function(){$(this).css("color", "red");})
				  .data("p", fruit)
				  .appendTo(bucket);
		// 생성해서 추가 <div id = "kiwi" style = "color:green" onclick = "..">키위</div>
		
		// [실습] <button style = "background-color:gold">삭제</button>
		// click 이벤트 -> bucket 삭제
		// body에 연결
		$("<button>").css("background-color", "gold")
					 .click(function(){$bucket.empty()})
					 .text("삭제(empty)")
					 .appendTo("body");
		
		
		
		
		
		
		
		
		$("#empty").click(function(){$("#bucket").empty()});
		// empty :<div id = "bucket"></div> 는 남아있다 (안에 내용만 삭제)
		$("#remove").click(function(){$("#bucket").remove()});
		// remove : <div id = "bucket"> 태그 통째로 삭제
	});
	</script>
	<input type = "button" id = "empty" value = "empty 삭제">
	<input type = "button" id = "remove" value = "remove 삭제">
</body>
</html>