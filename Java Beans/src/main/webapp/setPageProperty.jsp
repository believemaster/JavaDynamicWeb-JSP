<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Page Property</title>
</head>
<body>
<!-- 

If scope is page then:
scope of beans is for specific page only and code should be in the single page.
Restricted to specific page only and single bean is created for specific page.

 -->
<jsp:useBean id="user" class="com.yanik.beans.User" scope="page"></jsp:useBean>
<jsp:setProperty property="firstName" name="user" value="Yanik" />
<br/>
<jsp:setProperty property="lastName" name="user" value="Kumar" />
Values have been set.

<br/>
First Name: <jsp:getProperty property="firstName" name="user"/>
<br>
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>