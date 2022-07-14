<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionTestForm</title>
<script src="../include/jquery-3.6.0.min.js"></script>
</head>
<body>
<!-- 
sessionTestForm.jsp (로그인 폼)
session_success.jsp (로그아웃 버튼 클릭)
session_check.jsp (세션체크)
LoginController.java 
MemberDAO.java
MemberDTO.java
 -->
<% String context=request.getContextPath(); %>
<form method="post" action="<%= context %>/ch02_servlet/login.do">
아이디 : <input name="userid"> <br>
비밀번호 : <input type="password" name="passwd"><br>
<input type="submit" value="로그인">
</form>

<!-- 로그인 실패, 로그아웃 메시지를 출력할 태그 -->
<%
String message=request.getParameter("message");
if(message != null){
%>
 <span style="color: red;"><%= message %></span>
<%
}
%>


</body>
</html>