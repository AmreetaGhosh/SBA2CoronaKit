<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %> 
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="spring-form"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER SUMMARY</title>
<style type="text/css">
.error{
	
	font-style: italic;
	color: red;
}
</style>

</head>
<body >
<br>
<spring-form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout">
</spring-form:form>
<br>
<hr>
<h2> Order Summary</h2>
<hr>
<div><label>Customer Name : <security:authentication property="principal.username"/> </label></div>
<br>
<br>
<div><label>Total Order Amount : ${amount}</label></div>
<br>
<br>
<div><label>Order Date : ${date}</label></div>
<br>
<div><label>Delivery Address : ${address} </label>
</div>


<hr>
<h3>Billing Detailed Summary</h3>
<hr>
<hr>
<table>
<tr>
<th>No.</th>
<th>Product Name</th>
<th>Quantity</th>
<th>Amount</th>
</tr>
<core:forEach var="kitItem" items="${cartList}">
<tr>
<td>${kitItem[0]}</td>
<td>${kitItem[1]}</td>
<td>${kitItem[2]}</td>
<td>${kitItem[3]}</td>
</tr>
</core:forEach>
</table>
<hr>
<br>
<div><h4>Visit again soon. Stay Safe!!!</h4></div>
</body>
</html>