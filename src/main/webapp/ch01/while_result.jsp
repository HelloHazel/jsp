<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//request.getAttribute("키변수")는 서블릿의 request.setAttribute("키변수", 값);와 대응한다.
//(형변환자료형)request.getAttribute("키변수")로 값을 가지고 올 때  받는 type에 맞게 형변환해야한다.
int result=(int)request.getAttribute("result");
out.println("결과 : "+result);
%>
</body>
</html>