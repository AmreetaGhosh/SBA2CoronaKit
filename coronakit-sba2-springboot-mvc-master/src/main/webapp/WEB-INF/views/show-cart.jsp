<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="spring-form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
th {background-color: blue}

</style>
<title>User Cart</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<br>
<h2>Cart Items For User : <security:authentication property="principal.username"/></h2>
<br>

<table border="1" width="100%">
<thead>
<th align="center">Product Name</th>
<th align="center">Quantity</th>
<th align="center">Total Amount</th>
<th align="center">Action</th>
</thead>
		<tbody>
<core:forEach var="cartItem" items="${cartList}">
<tr>
<td align="center">${cartItem[0]}</td>
<td align="center">${cartItem[1]}</td>
<td align="center">${cartItem[2]}</td>
<td align="center"><a href="${pageContext.request.contextPath}/user/delete/${cartItem[3]}"><input id="atk" type="button" value="remove"></a></td>
</tr>
</core:forEach>
</tbody>
</table>

<br>
<hr/>
<br>
	<a href="${pageContext.request.contextPath}/user/show-list"><input  type="button" value="SHOW ALL PRODUCTS LIST"></a>

<br>
<br>
	<hr/>
	<br>
	<a href="${pageContext.request.contextPath}/user/checkout"><input  type="button" value="CHECK OUT"></a>
<br>
<br>
<hr>

<spring-form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout">
</spring-form:form>
<br>
<jsp:include page="footer.jsp"/>
</body>
</html>