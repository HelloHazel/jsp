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
<h2>[application_result.jsp파일]</h2>
<%
String message=(String)application.getAttribute("message");
out.print("메시지 : " + message);
%>

<a href="application_result2.jsp">서버 변수 확인2</a>

</body>
</html>