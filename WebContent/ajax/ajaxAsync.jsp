<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ajaxAsync.jsp</title>
	<script>
	function loadDoc() {
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4) {
		    	if(this.status == 200) {
		     		document.getElementById("demo").innerHTML = this.responseText;
		    	} else{
		    		document.getElementById("demo").innerHTML = this.status + ":" + this.statusText;
		    	}
		    } else { // readyState != 4
		    	document.getElementById("demo").innerHTML = "로딩 중";
		    }
		  };
		  xhttp.open("GET", "../server/ajax.jsp", true); // true 비동기식, false 동기식
		  xhttp.send(); // 블로킹 (동기식)
		  console.log("ajax 요청 후"); 
		  // 메시지가 언제 뜨는지 확인 
		  // 비동기식 -> 메시지가 뜨고 2초 후 결과가 나온다 (응답이 오기 전에도 다음 요청 실행)
		  // 동기식 -> 2초후 메시지와 결과가 나온다 (응답이 와야 다음 요청 실행)
		}
	</script>
</head>
<body>
	<button type = "button" onclick = "loadDoc()">click!</button>
	<div id = "demo"></div>
</body>
</html>