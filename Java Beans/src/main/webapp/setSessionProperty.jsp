<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Session Property</title>
</head>
<body>
<!-- 

If scope is session then:
different copy of bean is created in memory and different browsers have different sessions.

 -->
<jsp:useBean id="user" class="com.yanik.beans.User" scope="session"></jsp:useBean>
<jsp:setProperty property="firstName" name="user" value="Yanik" />
<br/>
<jsp:setProperty property="lastName" name="user" value="Kumar" />
Values have been set.
</body>
</html>