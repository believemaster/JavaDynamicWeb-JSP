<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<form method="post" action="<%= request.getContextPath() %>/SiteController">
		Username: <input type="text" name="username" placeholder="Enter Username" />
		<br/>
		Password: <input type="password" name="password" placeholder="Enter Password" />
		<br/> 
		<input type="submit" value="Login" />
	</form>
</body>
</html>