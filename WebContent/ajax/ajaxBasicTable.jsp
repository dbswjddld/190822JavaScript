<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ajax Basic.jsp</title>
</head>
<body>

	<div id = "demo"></div>
	<h2>ajaxBasic.jsp</h2>
	<button type = "button" onclick = "loadDoc()">Change Context</button>
	
	
	<script>
	function loadDoc() {
		  var xhttp = new XMLHttpRequest();
		  xhttp.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) { 
		    	
		    	var result = JSON.parse(this.responseText);
		    	var list = result.boxOfficeResult.dailyBoxOfficeList;
		    	
		    	var str = "<table border = '1'>";
		    	for(var i = 0; i < list.length; i++){
		    		str += "<tr><td>" + list[i].rank + "</td>" + "<td>" + list[i].movieNm + "</td></tr>";
		    	}
		    	str += "</table>";
		    	document.getElementById("demo").innerHTML = str;
		    }
		  };
		  xhttp.open("GET", "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20190825", true);
		  xhttp.send();
		}
	</script>

</body>
</html>