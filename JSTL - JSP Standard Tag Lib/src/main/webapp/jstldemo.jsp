<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL Demo</title>
</head>
<body>
	<c:set var="name" value="Yanik"></c:set>
	<c:out value="${name}"></c:out>
	<!-- read info from url -->
	${param.msg} 	<!-- url.jsp?msg=hello -->
	
	${name }
	<c:remove var="name"></c:remove>
	${name }	<!-- this will not be printed -->
	 

</body>
</html>