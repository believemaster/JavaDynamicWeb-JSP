<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
</head>
<body>
	It's Home Page <br>
	<ul>
		<li><a href="<%= request.getContextPath()  %>/Controller?page=login">Login</a></li>
		<li><a href="<%= request.getContextPath()  %>/Controller?page=signup">Signup</a></li>
		<li><a href="<%= request.getContextPath()  %>/Controller?page=about">About</a></li>
	</ul>
</body>
</html>