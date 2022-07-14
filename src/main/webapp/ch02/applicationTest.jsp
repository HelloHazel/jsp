<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>applicationTest</title>
<script src="../include/jquery-3.6.0.min.js"></script>
</head>
<body>
<%
String info=application.getServerInfo(); //WAS : Web Application Server 
// testserver-tomcat, RealServer-Zeus등 WebLogic..
System.out.println("WAS 정보 : " + info);
String path=application.getRealPath("/");//배포경로(서비스경로)
application.log("서비스 경로 : " + path);//서버부하가 콘솔보다는 적다. 로깅툴이 별도로 존재
System.out.println("서비스 경로 : " + path);
application.setAttribute("message", "hello");
%>

<a href="application_result.jsp">서버 변수 확인</a>


</body>
</html>