<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>travel2.jsp</title>
	<script src = "https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
	$(function(){
		$("span").hide(); // hide() :Element에는 있는데 안보임 (display : none)
		
		// mouseover 하면 span 태그가 보이게
		// mouseout 하면 span 태그가 안보이게
	/* 	$("li").bind(
				{"mouseover": function(){ $(this).find("span").show() },
				 "mouseout": function(){ $(this).find("span").hide() }
				}
				// 한 항목에 이벤트 여러개 쓸 때  : ({이벤트1:함수 , 이벤트2:함수2})
	 	);
	*/
		
		$("li").bind("mouseover mouseout", function(){
			$(this).find("span").toggle();
			// .toggle() :Display or hide the matched elements.
		});
	});
	</script>
</head>
<body>
	<ul>
		<li>자바<span>2,000</span>ㅁㅁ</li>
		<li>스프링<span>4,000</span></li>
		<li>자바 스크립트<span>5,000</span></li>
	</ul>
</body>
</html>