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
		    	// readyState 4: 응답 완료
		    	// status 200 :정상 실행 (404 경로 error)
		     //document.getElementById("demo").innerHTML = this.responseText;
		    	
		    	var result = JSON.parse(this.responseText);
		    	var list = result.boxOfficeResult.dailyBoxOfficeList;
		    	// boxOfficeResult배열 내 dailyBoxOfficeList에 영화 정보 배열이 있다
		    	for(var i = 0; i < list.length; i++){
		    		document.getElementById("demo").innerHTML += list[i].rank + list[i].movieNm + "<br>";
		    		// rank와 movieNm만 출력
		    	}
		    }
		  };
		  //xhttp.open("GET", "../server/ajax_info.txt", true);
		  xhttp.open("GET", "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20190825", true);
		  xhttp.send(); // .send :요청 보냄
		}
	</script>

</body>
</html>