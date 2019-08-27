<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>empReg.jsp</title>
	<script src = "https://code.jquery.com/jquery-3.4.1.js"></script>
	<script>
	$(function(){
		// select에 option 만들기
		$.getJSON("DeptListServ", function(data){
			var list = data;
			for(var i = 0; i < list.length; i ++){
				$option = $("<option>").val(list[i].departmentId).text(list[i].departmentName);
				$("[name='departmentId'").append($option);
			}
		});
		
		// 이메일 중복체크
		$("[name='email']").change(function(){
			// ajax 요청
			var email = $("[name='email']").val(); // email 변수에 입력한 값을 담음
			var param = {email : email};
			//var param = "email=" + email;
			$.getJSON("EmailCheck" , param, function(data){ // parameter 넘겨주어야함
				// data :{"result":"true"}
				if(data.result == "true")
					$("#result").text("중복입니다!").css("color", "red");
				else {
					document.getElementById("result").innerHTML = "사용 가능";
					document.getElementById("result").style.color = "gray";
				}
			})
		});
	});
	</script>
</head>
<body>
	<h3>사원 등록</h3>
	이름 <input name = "firstName"><br>
	이메일 <input name = "email"><span id = "result"></span><br>
	부서 <select name = "departmentId"></select>
	<button>등록</button>
</body>
</html>