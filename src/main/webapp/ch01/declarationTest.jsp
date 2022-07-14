<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>declarationTest</title>
</head>
<body>
<%
String str1="java";

%>

<%! //jsp 선언부

String str2="hello";
String getStr(){
	return str2;
}
%>

<%=str1 %> <br>
<%=str2 %><br>
<%= getStr() %><br>
</body>
</html>