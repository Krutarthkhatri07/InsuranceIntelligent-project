<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Country</title>
</head>
<body>
	<table border="1">
	<c:forEach items="${country}" var="i">
		<tr>
			<td>${i.country}</td><td><a href="delete_country.xx?id=${i.id}">delete</a></td>
		</tr>
	</c:forEach>	
	</table>
	
</body>
</html>