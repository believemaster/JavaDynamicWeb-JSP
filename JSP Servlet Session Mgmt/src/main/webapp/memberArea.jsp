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
	// Using session for logout feature
	String username=null, sessionID=null;
	if(request.getSession().getAttribute("username") == null) {
		response.sendRedirect(request.getContextPath() + "/SiteController?action=login");
	} else {
		username = request.getSession().getAttribute("username").toString();
		sessionID = request.getSession().getId();
	}

/*
// Cookie handling (but not a good practice to use cookie for login logout feature)
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
*/
%>

Username: <b><%= username %></b> <br/>

Current Session ID (every session ID is unique everytime): <b><%= sessionID %></b>
<br/>
<em>You're in member area page.</em>

<form action="<%= request.getContextPath() %>/MemberAreaController" method="get">
<input type="hidden" name="action" value="destroy" />
<input type="submit" value="Logout" />
</form>
</body>
</html>