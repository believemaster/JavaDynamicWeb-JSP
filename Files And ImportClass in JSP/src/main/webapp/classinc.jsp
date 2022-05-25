<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Class in JSP</title>
</head>
<body>
<%@ page import="java.util.Date, com.yanik.UserDefined" %>

<%= new Date() %>

<%= new Demo() %>

<br>

<% out.print(new UserDefined().Demo()); %>
</body>
</html>