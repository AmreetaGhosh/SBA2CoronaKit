<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib prefix="spring-form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ALL PRODUCTS-USER</title>
<style type="text/css">
			.error{
				color : red;
			}
		</style>

<style type="text/css">
th {background-color: blue}

</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<h2 style="color:green;">Products List For <security:authentication property="principal.username"/></h2>
<hr>
<table border="1" width="100%">
<thead>
<th align="center" >Product Name</th>
<th align="center">Product Description</th>
<th align="center" >Price/Unit</th>
<th align="center" >Click to add</th>
</thead>
<tbody>
<core:forEach var="products" items="${productList}">
<tr>
<td align="center" >${products.productName}</td>
<td align="center" >${products.productDescription}</td>
<td align="center">${products.cost}</td>
<td align="center"><a href="${pageContext.request.contextPath}/user/add-to-cart/${products.id}"><input id="atk" type="button" value="Add to Kit"></a></td>
</tr>
</core:forEach>
</tbody>
</table>

<br>
<spring-form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout">
</spring-form:form>

<br>

<jsp:include page="footer.jsp"/>
</body>
</html>