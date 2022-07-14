<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageDirective</title>
</head>
<body>
<%= getServletInfo()  %> <br>
<%= application.getRealPath("/")  %>
</body>
</html>