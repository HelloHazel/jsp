<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
</head>
<body>
<%

//jsp 프로그래밍 유형
//model 1: jsp 페이지 위주
//model 2 : java class(서블릿) 위주
//MVC pattern : model view controller
String str = "hello jsp";
out.print(str+"<br>");
out.print(application.getRealPath("/"));
//application : 서버의 정보를 처리하는 내장된 객체

%>

</body>
</html>