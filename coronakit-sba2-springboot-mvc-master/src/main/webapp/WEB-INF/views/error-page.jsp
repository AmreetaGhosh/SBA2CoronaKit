<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ERROR!!</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<h1>Un-Authorized Access...</h1>
<a href="${pageContext.request.contextPath}/">HOME</a>
<jsp:include page="footer.jsp"/>
</body>
</html>