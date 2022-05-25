<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File In JSP</title>
</head>
<body>
<!-- First Way of loading file in JSP using expressions elements -->
<!-- This is for static content of file -->
<%@ include  file= "file1.txt" %>
<br>
<!-- Another Way of loading file in JSP using jsp:include -->
<!-- This is for dynamic content of file -->
<jsp:include page="file2.txt"></jsp:include>
</body>
</html>