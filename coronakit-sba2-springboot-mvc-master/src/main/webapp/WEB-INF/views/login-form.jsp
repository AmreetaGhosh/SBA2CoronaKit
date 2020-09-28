<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring-form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<jsp:include page="header.jsp"/>
<br>

<core:if test="${param.error != null}">
	<i>Invalid Credentials!!!</i>
</core:if>

<spring-form:form action="${pageContext.request.contextPath}/validate" method="POST">
	<br/>
	<br/>
	<label>Enter user name</label>
	<input type="text" name="username" />
	<br/>
	<br/>
	<label>Enter password</label>
	<input type="password" name="password" />
	<br/>
	<br/>
	  <input type="submit" value="Login" />  
	<!-- <a href="${pageContext.request.contextPath}/admin-home"><input type="submit" value="Login" /></a> --> 
</spring-form:form>
<core:if test="${param.logout != null}">
	<i>You have been logged out successfully!!!</i>
</core:if>

<br>
<jsp:include page="footer.jsp"/>
</body>
</html>