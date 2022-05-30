<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Request Property</title>
</head>
<body>
<!-- 

If scope is request then:
when executing a separate request object is used and getting value

 -->
<jsp:useBean id="user" class="com.yanik.beans.User" scope="request"></jsp:useBean>
First Name: <jsp:setProperty property="firstName" name="user" value="Yanik" />
<br>
Last Name: <jsp:setProperty property="lastName" name="user"  value="Kumar" />
Values have been set.

<%

	request.getRequestDispatcher("getRequestProperty.jsp").forward(request, response);

%>
</body>
</html>