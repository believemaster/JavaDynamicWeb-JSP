<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
</head>
<body>
	<h1>Hello Developer</h1>
	<h5>Please Click Login to create your cookie and session.</h5>
<a href="<%= request.getContextPath() %>/SiteController?action=login">Login</a>
</body>
</html>