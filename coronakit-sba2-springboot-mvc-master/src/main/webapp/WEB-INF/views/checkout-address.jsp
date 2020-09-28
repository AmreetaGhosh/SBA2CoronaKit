<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delivery Page</title>
<style type="text/css">
.error{
	
	font-style: italic;
	color: red;
}
</style>

<jsp:include page="header.jsp"/>
</head>
<body >
<br>
<h2 align="center">Check Out For User : <security:authentication property="principal.username"/></h2>
<br>

	<spring:form action="${pageContext.request.contextPath}/user/finalize"
		method="POST" modelAttribute="coronaKit" >

		<div>
			<div>
				<spring:label path="orderDate">Order Date : ${coronaKit.orderDate}</spring:label>
			</div>
		</div>
		<br>
		<div>
			<div>
				<spring:label path="totalAmount">Total Kit Amount : ${coronaKit.totalAmount}</spring:label>
			</div>
			<br>
			<div>
				<div>
					<spring:label path="deliveryAddress">Shipping address :</spring:label>
				</div>
				<br>
				<div>
					<spring:input path="deliveryAddress" />
					<spring:errors path="deliveryAddress" cssClass="error" />
				</div>
			</div>
			<br>
			<br>
			<span>
				<input type="submit" value="Submit" />
			</span>
			<span>
				<a href="${pageContext.request.contextPath}/user/show-kit"><input type="button" value="show cart" /> </a>
			</span>
		</div>
	</spring:form>
<jsp:include page="footer.jsp"/>

</body>
</html>