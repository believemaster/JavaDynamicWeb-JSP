<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Application Property</title>
</head>
<body>
<!-- 

If scope is application then:
single copy of bean is created in memory and shared with entire application and in different browsers can have changes.
application is the widest scope of beans

 -->
<jsp:useBean id="user" class="com.yanik.beans.User" scope="application"></jsp:useBean>
First Name: <jsp:getProperty property="firstName" name="user"/>
<br>
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>