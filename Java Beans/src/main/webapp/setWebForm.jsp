<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Set Session Property | Web Form</title>
</head>
<body>
<jsp:useBean id="user" class="com.yanik.beans.User" scope="session"></jsp:useBean>
<form action="getWebForm.jsp" method="post">
<!-- firstName and lastName is exactly same as bean property  -->
	First Name: <input type="text" name="firstName" value='<jsp:getProperty property="firstName" name="user" />'>
	<br/>
	Last Name: <input type="text" name="lastName" value='<jsp:getProperty property="lastName" name="user" />'>
	<br/>
	<input type="submit" value="Submit" />
</form>
</body>
</html>