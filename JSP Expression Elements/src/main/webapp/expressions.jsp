<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expressions</title>
</head>
<body>

<h1>JSP Expressions:</h1>

<%= "Hello here" %> <br>
<%!  public int x = 21; %> <br>
<%= x %> <br>
<!-- This can also be done as -->
<%= new Integer(23) %> <br>
<%= new String("Can be a string") %> <br>
<%= new java.util.Date() %> <br>
<%= 2*70 %>

<br>

<h1>JSP Scriptlets:</h1>
<%
	int x = 31;
	out.print(x);
	
	if(x>30) {
		out.print("Greater than 30");
	} else {
		out.print("Less than 30");
	}
	out.print("<br>");
	out.print("Loop elements below:");
	for(int i=0; i<10; i++) {
		out.print("<br>");
		out.print(i);
	}

%>

<br>

<h1>JSP Declaration</h1>
<!-- We can make use of access specifier in declaration and it is particularly used for methods declaration-->

	<%! public int y= 33; %>
	<%! String newMessage() { return "I love java"; } %>
	<%= newMessage() %>
	
	<br>
	
	<h1>JSP Comment</h1>
	<h5>Things commented inside file</h5>
<%-- Inside this every code of jsp, java is commented--%>
<%--
	<%! public int x= 33; %>
	<%! String message() {
		return "I hate java";
	}
	%>
	<%= message() %>
	
	--%>
	
	<br>
	
	<h1>JSP Directive</h1>
	<h5>Used for meta data and contentType etc</h5>
	<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> --%>
	
	
</body>
</html>