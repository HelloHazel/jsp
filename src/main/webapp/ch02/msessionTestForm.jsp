<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionTestForm2</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
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
	<%
	String context = request.getContextPath();
	%>
	<form method="post" action="<%=context%>/ch02_servlet/login.do">
		<div data-role="page">
			<div data-role="header" data-theme="a">
				<h1>로그인 페이지</h1>
			</div>
			<div data-role="content">
				<div class="id">
					아이디 : <input name="userid">
				</div>
				<div class="pwd">
					비밀번호 : <input type="password" name="passwd">
				</div>
				<input type="submit" value="로그인">
	</form>


	<!-- 로그인 실패, 로그아웃 메시지를 출력할 태그 -->
	<%
	String message = request.getParameter("message");
	if (message != null) {
	%>
	<span style="color: red;"><%=message%></span>
	<%
	}
	%>

	</div>
	<div data-role="footer" data-position="fixed"></div>
	</div>
</body>
</html>