<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Session Property | Web Form</title>
</head>
<body>
<jsp:useBean id="user" class="com.yanik.beans.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user" />
First Name: <jsp:getProperty property="firstName" name="user"/>
<br>
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>