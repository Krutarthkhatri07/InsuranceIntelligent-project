<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
	<c:forEach items="${state}" var="i">
		<tr>
			<td>${i.state}</td>
			<td>${i.countryVO.country}</td>
			<td><a href="delete_state.xx?id=${i.id}">delete</a></td>
		</tr>
	</c:forEach>	
	</table>
</body>
</html>