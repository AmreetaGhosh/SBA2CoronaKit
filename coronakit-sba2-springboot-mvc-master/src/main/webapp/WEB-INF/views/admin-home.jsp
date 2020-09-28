<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
h2{background-color: grey}


</style>
<title>Admin Home</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1 align="center">This is Admin dashboard</h1>
<br>
<h2 align="center">Hello <security:authentication property="principal.username"/></h2>
<br/>
<spring-form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout">
</spring-form:form>
<hr/>

	<a href="${pageContext.request.contextPath}/admin/product-entry">ADD NEW PRODUCT</a>


	<hr/>
	<a href="${pageContext.request.contextPath}/admin/product-list">SHOW ALL PRODUCTS</a>

<jsp:include page="footer.jsp"/>
</body>
</html>