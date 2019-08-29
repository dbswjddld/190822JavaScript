<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>travel.jsp</title>
	</head>
	<script src = "https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
	$(function(){
		// 합계란에 값 넣기
		$("tr:gt(0)").each(function(){ // tr:gt(0) :첫번째 tr보다 더 큰것
			var total = 0;
			$(this).find("td:lt(3)").each(function(){
				// 부모.find(자식) -> 해당하는 자식 모두 선택
				total += parseInt($(this).text());
			});
			$(this).find("td:eq(3)").text(total);
		});
		
		// td를 클릭하면 해당 행의 합계를 alert
		$("td").click(function(){
			// var sum = $(this).parent().find("td:eq(3)").text();
			var sum = $(this).parent().find("td:last").text(); // last :마지막 td 태그
			//         클릭한것      의 부모          의 자식 td중 마지막       의 태그내용
			alert("합계 : " + sum);
		});
		
		// tr을 클릭하면 국어 성적을 alert
		$("tr").click(function(){
			var print = $(this).find("td").first().text();
			//           클릭한것     의 자식              중 첫번째      의 태그내용
			alert("국어 성적 : " + print);
		});
	
	})
	</script>
<body>
	<table border = "1">
		<tr><td>국어</td><td>영어</td><td>수학</td><td>합계</td></tr>
		<tr><td>100</td><td>70</td><td>65</td><td></td></tr>
		<tr><td>80</td><td>65</td><td>70</td><td></td></tr>
		<tr><td>90</td><td>85</td><td>75</td><td></td></tr>
	</table>
</body>
</html>