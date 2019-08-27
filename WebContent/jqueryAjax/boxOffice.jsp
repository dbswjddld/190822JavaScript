<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>boxOffice.jsp</title>
	<script src = "https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
	function loadDoc(){
		var url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20190826";
		/* 
		$.get(url, function(data){ // data :json타입으로 넘어오기 때문에 parse 안해도 된다.
	    	var list = data.boxOfficeResult.dailyBoxOfficeList;
	    	
	    	var str = "<table border = '1'>";
	    	for(var i = 0; i < list.length; i++){
	    		str += "<tr><td>" + list[i].rank + "</td>" + "<td>" + list[i].movieNm + "</td></tr>";
	    	}
	    	str += "</table>";
	    	document.getElementById("demo").innerHTML = str;
		}); // $.get(url, data(생략가능), function) 
		 */
		
		
		
		// jquery로 바뀌보자
		/* 
		$.ajax(url, {
			url : url,
			method :"get", // 요청방식 -get, post
			//data : // 넘겨줄 데이터
			dataType :"json",
			success :function(data){ // callback 함수 작성
				var list = data.boxOfficeResult.dailyBoxOfficeList;
		    	
		    	var str = "<table border = '1'>";
		    	for(var i = 0; i < list.length; i++){
		    		str += "<tr><td>" + list[i].rank + "</td>" + "<td>" + list[i].movieNm + "</td></tr>";
		    	}
		    	str += "</table>";
		    	document.getElementById("demo").innerHTML = str;
			}
		});
		 */
		
		
		// success말고
		// done(성공), fail(실패), always(항상)
		$.ajax(url, {
			url : url,
			method :"get",
			dataType :"json"
		}).done(function(data){ // done(function( data, textStatus, jqXHR ) {});
			var list = data.boxOfficeResult.dailyBoxOfficeList;
	    	
	    	var str = "<table border = '1'>";
	    	for(var i = 0; i < list.length; i++){
	    		str += "<tr><td>" + list[i].rank + "</td>" + "<td>" + list[i].movieNm + "</td></tr>";
	    	}
	    	str += "</table>";
	    	document.getElementById("demo").innerHTML = str;
		}).fail(function(xhr, code){ // fail(function( jqXHR, textStatus, errorThrown ) {});
			document.getElementById("demo").innerHTML = code; // 에러 메시지 출력
		}).always(function(){ // always(function( data|jqXHR, textStatus, jqXHR|errorThrown ) { });
			console.log("always 실행");
		});
	}
	</script>
</head>
<body>
	<div id = "demo"></div>
	<button type = "button" onclick = "loadDoc()">영화 예매 순위</button>
</body>
</html>