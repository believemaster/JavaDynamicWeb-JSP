<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Area</title>
</head>
<body>
<% 
	String username=null, sessionID=null;
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		for(Cookie cookie: cookies) {
			if(cookie.getName().equals("username")) {
				username = cookie.getValue();
			}
			if(cookie.getName().equals("JSESSIONID")){
				sessionID = cookie.getValue();
			}
		}
	}
	if(sessionID == null || username == null) {
		response.sendRedirect("login.jsp");
	}
%>

Username: <b><%= username %></b> <br/>

Current Session ID (every session ID is unique everytime): <b><%= sessionID %></b>
</body>
</html>