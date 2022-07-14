<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestTest2</title>
<script src="../include/jquery-3.6.0.min.js"></script>
</head>
<body>
<h2>request 객체의 method</h2>
<%
String[] names={"프로토콜","서버이름","method","컨텍스트","uri","url","ip"};
String[] values={request.getProtocol(), request.getServerName(), 
		request.getMethod(), request.getContextPath(), 
		request.getRequestURI(), request.getRequestURL().toString(), 
		request.getRemoteAddr()};
//uri는 타입이 스트링이지만, url은 타입이 스트링버퍼로 되어있어 toString()으로 한번 더 바꿔줘야 한다.

for(int i=0; i<names.length; i++){
	out.println(names[i]+":"+values[i]+"<br>");
}

//request 헤더 변수들을 Enumeration에 저장(집합처리객체)
Enumeration<String> en=request.getHeaderNames();
String headerName="";
String headerValue="";
out.print("<h2>헤더 정보</h2>");
while(en.hasMoreElements() ){//다음 요소가 있으면
	headerName = en.nextElement();//다음 요소를 가져와 headerName 에 초기화
	headerValue = request.getHeader(headerName);//request 헤더값 저장
	out.print(headerName+":"+headerValue+"<br>");
}
%>
</body>
</html>