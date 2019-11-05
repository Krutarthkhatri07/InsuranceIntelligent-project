<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<spring:form action="insert_country_db.xx" modelAttribute="country" method="post">
		<spring:input path="country"/>
		<input type="submit"/>
	</spring:form>
	<button onclick="fun()">Insert State</button>
	<button onclick="fun1()">View Countries</button>
	<script type="text/javascript">
		function fun()
		{
			location.href = "insert_state.xx";	
		}
		function fun1()
		{
			location.href = "search_country.xx";	
		}
	</script>
</body>
</html>