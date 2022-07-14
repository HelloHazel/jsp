<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
<script src="../include/jquery-3.6.0.min.js"></script>
</head>
<body>
<%
// pageContext(현재페이지) < request(요청+응답) < session(사용자 단위) < application(서버 단위)
//session 영역에 변수 저장
session.setAttribute("name", "김철수");
session.setAttribute("age", 20);

//request 영역에 변수 저장
request.setAttribute("name", "홍길동");
request.setAttribute("age", 25);

//forward() : 페이지 이동(주소가 바뀌지 않음, 대량의 데이터처리)
RequestDispatcher rd=request.getRequestDispatcher("session_result.jsp");
rd.forward(request, response);
%>

</body>
</html>