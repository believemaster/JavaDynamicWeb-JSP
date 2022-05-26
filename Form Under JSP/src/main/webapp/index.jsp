<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form in JSP</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/Controller" method="get">
		<label for="name">Name:</label>
		<input id="name" type="text" name="name" required>
		<br/>
		<label for="gender">Gender:</label>
		<input type="radio" name="gender" value="male" checked="checked"> Male
		<input type="radio" name="gender" value="female"> Female
		<br/>
		<label for="gender">Languages Known:</label>
		<input type="checkbox" name="lang" value="English"> English
		<input type="checkbox" name="lang" value="Hindi"> Hindi
		<br/>
		Country: 
		<select name="country">
			<option value=""  selected>Select</option>
			<option value="india">India</option>
			<option value="usa">USA</option>
			<option value="singapore">Singapore</option>
		</select>
		<br/>
		<input type="submit"  value="Submit">
	</form>
</body>
</html>