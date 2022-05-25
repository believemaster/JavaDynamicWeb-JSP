<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main page to Start</title>
</head>
<body>
	This is from original page.
	<!-- Forward the request from one page to another -->
	<!-- With use of jsp:forward tags -->
	<!-- <jsp:forward page="forward.jsp"></jsp:forward>  -->
	
	<!-- With expressions scriptlet -->
	<%
		// request.getRequestDispatcher("forward.jsp").forward(request, response);
	 response.sendRedirect("redirect.jsp");
	%>
</body>
</html>