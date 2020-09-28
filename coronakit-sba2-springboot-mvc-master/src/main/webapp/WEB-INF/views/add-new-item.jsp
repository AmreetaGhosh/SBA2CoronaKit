<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring-form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
.error {
    color: red;
    font-style: italic;
}</style>
<title>Insert title here</title>
</head>
<body>
<%-- <core:if test="${param.error != null}">
	<i>Invalid Credentials!!!</i>
</core:if> --%>

<spring-form:form action="${pageContext.request.contextPath}/admin/product-save" method="POST"  modelAttribute="product">
	<br/>
	<br/>
	<spring-form:label path="productName">Enter Product Name</spring-form:label>
	<spring-form:input path="productName" />
	<spring-form:errors path="productName" cssClass="error" />
	<br/>
	<br/>
	<spring-form:label path="cost">Enter Cost</spring-form:label>
	<spring-form:input path="cost" />
	<spring-form:errors path="cost" cssClass="error" />
	<br/>
	<br/>
	<spring-form:label path="productDescription">Enter Product Description</spring-form:label>
	<spring-form:input path="productDescription" />
	<spring-form:errors path="productDescription" cssClass="error" />
	<br/>
	<br/>
	  <input type="submit" value="Add Item" />  
	<!-- <a href="${pageContext.request.contextPath}/admin-home"><input type="submit" value="Login" /></a> --> 
</spring-form:form>

<hr/>
	<a href="${pageContext.request.contextPath}/admin/product-list">SHOW ALL PRODUCTS</a>
	
	
<core:if test="${param.logout != null}">
	<i>You have been logged out successfully!!!</i>
</core:if>


</body>
</html>