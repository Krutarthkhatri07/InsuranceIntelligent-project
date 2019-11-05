<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<f:form action="insertCountry" modelAttribute="data" method="post"> 

country <f:input path="country"/>
<input type="submit" value="submit">
</f:form>

	<!-- <button onclick="fun()">Insert Country</button>
	<script type="text/javascript">
		function fun()
		{
			href.location = "insert_country.xx";	
		}
	</script> -->
</body>
</html>