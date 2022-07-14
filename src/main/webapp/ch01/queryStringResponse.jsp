<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>queryStringResponse</title>
</head>
<body>
당신의 학번은 <%= request.getParameter("no") %> 입니다 <br>
당신의 이름은 <%= request.getParameter("name") %> 입니다 <br>
</body>
</html>