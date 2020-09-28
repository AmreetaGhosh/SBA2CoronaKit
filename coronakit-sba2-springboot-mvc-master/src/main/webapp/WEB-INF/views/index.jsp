<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<br>
<h1 align="center">Corona-Kit Home</h1>
<hr/>
<a href="${pageContext.request.contextPath}/custom-login"><input type="button" value="Login" /></a>
<hr/>
<br>
<jsp:include page="footer.jsp"/>
</body>
</html>