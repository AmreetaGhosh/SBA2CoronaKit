<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
</head>
<body>
<h1 align="center">Welcome to User Dashboard</h1>
<br>
<h2 align="center">Hello <security:authentication property="principal.username"/></h2>



<hr/>
	<a href="${pageContext.request.contextPath}/user/show-list">SHOW ALL PRODUCTS</a>
	
	<br>
	<br>
	<hr>

	<a href="${pageContext.request.contextPath}/user//show-kit">SHOW KIT</a>

	<br>
	<br>
	<hr>
	
	<br/>
<spring-form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout">
</spring-form:form>

</body>
</html>