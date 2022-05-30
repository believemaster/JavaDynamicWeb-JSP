<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Session Property</title>
</head>
<body>
<!-- 

If scope is session then:
different copy of bean is created in memory and different browsers have different sessions.

 -->
<jsp:useBean id="user" class="com.yanik.beans.User" scope="session"></jsp:useBean>
First Name: <jsp:getProperty property="firstName" name="user"/>
<br>
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>