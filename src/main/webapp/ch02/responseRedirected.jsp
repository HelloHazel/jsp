<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.0.min.js"></script>
</head>
<body>
<%
String name=request.getParameter("name");
String age=request.getParameter("age");
%>
이름 : <%= name %> <br>
나이 : <%= age %> <br>
<hr>
<!-- 한번에 아래처럼 처리해도 된다. -->
이름 : <%= request.getParameter("name") %> <br>
나이 : <%= request.getParameter("age") %> <br>
<hr>
<!-- EL 방식  -->
<!-- param.변수 -->
이름 : ${param.name} <br>
나이 : ${param.age} <br>


</body>
</html>