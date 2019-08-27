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
		  
		  var param = "userid=" + document.getElementById("userid").value; // 질의 문자열
		  
		  xhttp.open("GET", "../server/ajax.jsp?" + param, true); // ?userid=... -> get방식
		  xhttp.send();
		}
	</script>
</head>
<body>
	<input id = "userid"/>
	<button type = "button" onclick = "loadDoc()">click!</button>
	<div id = "demo"></div>
</body>
</html>