<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring-form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
th {background-color: blue}

</style>
<title>Admin - All Products</title>
</head>

<body>
<jsp:include page="header.jsp"/>
<br>
<hr>

<br>
<h2>All Products List</h2>

<table border="1" width="100%">
		<thead>
			<th align="center">Product Name</th>
			<th align="center">Product Cost</th>
			<th align="center">Product Description</th>
			<th align="center">Action</th>
		</thead>
		<tbody>
		<core:forEach var="product" items="${allProducts}">
			<tr>
				<td align="center">${product.productName}</td> 
				<td align="center">${product.cost}</td> 
				<td align="center">${product.productDescription}</td>
				<td align="center">
					
					|
					<a href = "${pageContext.request.contextPath}/admin/product-delete/${product.id}">Delete</a>
				</td> 
			</tr>
		</core:forEach>	
		</tbody>
		<br>
		<hr/>

	<a href="${pageContext.request.contextPath}/admin/product-entry">ADD NEW PRODUCT</a>

<br>


	<hr/>
	</table>
	<br>
	<hr>
<div><a href="${pageContext.request.contextPath}/admin/home"><input type="button" value="Admin Home"></a></div>

	
	<br>
<br>
<spring-form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout">
</spring-form:form>

<hr>

<br>
<jsp:include page="footer.jsp"/>
</body>
</html>