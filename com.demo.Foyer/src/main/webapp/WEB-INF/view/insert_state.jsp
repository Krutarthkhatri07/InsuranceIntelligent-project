<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<spring:form action="insert_state_db.xx" modelAttribute="state">
		
		<%-- <spring:select path="countryVO">
			<spring:options items="${country}"/>
		</spring:select> --%>
		 
		 <%-- <c:forEach var="entry" items="${data}">
Name:  ${entry.key} <br/>
Value: ${entry.value} <br/>
</c:forEach> --%>
		
		 <select name="country" >
			<c:forEach items="${country}" var="i">
				<option value=${ i.id }> ${i.country} </option>
			</c:forEach>
		</select> 
		
		<spring:input path="state"/>
		<input type="submit"/>
	</spring:form>
	<button onclick="fun()">view states</button>
	<script type="text/javascript">
		function fun()
		{
			location.href = "search_state.xx";
		}
	</script>
	
</body>
</html>