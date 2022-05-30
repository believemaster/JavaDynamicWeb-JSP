<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Request Property</title>
</head>
<body>
<!-- 

If scope is request then:
when setting values request object is different

 -->
<jsp:useBean id="user" class="com.yanik.beans.User" scope="request"></jsp:useBean>
First Name: <jsp:getProperty property="firstName" name="user"/>
<br>
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>