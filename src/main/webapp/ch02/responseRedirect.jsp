<%@page import="java.net.URLEncoder"%>
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
request.setAttribute("name", "김철수");//value는 Object이다.
String name=URLEncoder.encode("김철수", "utf-8");

//response 응답객체
//1)forward
//2)redirect : 주소도 변경되고, 화면변경, 간단한 파라미터 스트링값만 전달가능하다.
//get방식, query string : ?변수=값&변수=값"
response.sendRedirect("responseRedirected.jsp?name="+name+"&age=20");
%>
</body>
</html>