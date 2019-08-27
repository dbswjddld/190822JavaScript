<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//Thread.sleep(2000); // 2초간 대기
	//int x = 5/0;  //500 에러
	//out.print("async test"); // 대기 후 응답결과 넘김
	
	// ajaxAsyncGet / Post
	String userid = request.getParameter("userid");
	if(userid.equals("admin")) {
		out.print("사용 불가");
	} else {
		out.print("사용 가능");
	}
%>