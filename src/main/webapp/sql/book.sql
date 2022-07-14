<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="book.*" %>
<%@ page import="java.util.ArrayList" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
<%
BookDAO dao=new BookDAO();
ArrayList<BookDTO> items=dao.bookList();
%>
<ul>
<% for(BookDTO dto : items) { %>
<li> <%= dto.getTitle() %></li>
<% } %>
</ul>

</body>
</html>