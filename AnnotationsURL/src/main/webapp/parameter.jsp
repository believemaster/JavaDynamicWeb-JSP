<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Parameter JSP</title>
</head>
<body>
<%

// to get the things from JSP web page use only these statements as out object is already defined in servlet
// get query like this: parameter.jsp?query=JSP+Java&query2=Laravel+php
out.println("Query1 = " + request.getParameter("query"));
out.println("Query2 = " + request.getParameter("query2"));

%>
</body>
</html>